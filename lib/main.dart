import 'package:flutter/material.dart';
import 'package:project_cookies/data/data.dart';

import 'model/tile_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TileModel> pairs = <TileModel>[];
  List<TileModel> visiblePairs = <TileModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pairs = getPairs();
    pairs.shuffle();
    visiblePairs = pairs;

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        visiblePairs = getQuestions();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            Text('0/800'),
            Text('Points'),
            const SizedBox(
              height: 20,
            ),
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisSpacing: 0.0,
                maxCrossAxisExtent: 100,
              ),
              children: List.generate(visiblePairs.length, (index) {
                return Tile(
                  imageAssetPath: pairs[index].getImageAssetPath(),
                  parent: this,
                  selected: pairs[index].getIsSelected(),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

@immutable
class Tile extends StatefulWidget {
  Tile(
      {Key? key,
      required this.imageAssetPath,
      required this.parent,
      required this.selected})
      : super(key: key);
  String imageAssetPath;
  bool selected;
  _HomePageState parent;

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Image.asset(widget.imageAssetPath),
    );
  }
}
