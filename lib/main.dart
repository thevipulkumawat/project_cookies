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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pairs = getPairs();
    pairs.shuffle();
    visiblePairs = pairs;
    selected = true;

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        visiblePairs = getQuestions();
        selected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            points != 800
                ? Column(
                    children: [
                      Text(
                        '$points/800',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        'Points',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )
                : Container(),
            const SizedBox(
              height: 20,
            ),
            points != 800
                ? GridView(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      mainAxisSpacing: 0.0,
                      maxCrossAxisExtent: 100,
                    ),
                    children: List.generate(visiblePairs.length, (index) {
                      return Tile(
                        imageAssetPath: visiblePairs[index].getImageAssetPath(),
                        parent: this,
                        tileIndex: index,
                      );
                    }),
                  )
                : Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Text(
                      'Replay',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

@immutable
class Tile extends StatefulWidget {
  Tile({
    Key? key,
    required this.imageAssetPath,
    required this.parent,
    required this.tileIndex,
  }) : super(key: key);
  String imageAssetPath;
  int tileIndex;
  _HomePageState parent;

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          if (selectedImageAssetPath != "") {
            if (selectedImageAssetPath ==
                pairs[widget.tileIndex].getImageAssetPath()) {
              //correct
              print('correct');
              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                points = points + 100;
                setState(() {});
                selected = false;
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setImageAssetPath("");
                  pairs[selectedTileIndex].setImageAssetPath("");
                });
                selectedImageAssetPath = "";
              });
            } else {
              //wrong choice
              print('wrong');
              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                selected = false;
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setIsSelected(false);
                  pairs[selectedTileIndex].setIsSelected(false);
                });
                selectedImageAssetPath = "";
              });
            }
          } else {
            selectedTileIndex = widget.tileIndex;
            selectedImageAssetPath =
                pairs[widget.tileIndex].getImageAssetPath();
          }
          setState(() {
            pairs[widget.tileIndex].setIsSelected(true);
          });

          print('you clicked me');
        }
      },
      child: Container(
          margin: const EdgeInsets.all(5),
          child: pairs[widget.tileIndex].getImageAssetPath() != ""
              ? Image.asset(pairs[widget.tileIndex].getIsSelected()
                  ? pairs[widget.tileIndex].getImageAssetPath()
                  : widget.imageAssetPath)
              : Image.asset("assets/correct.png")),
    );
  }
}
