import '../model/tile_mode.dart';

List<TileModel> pairs = <TileModel>[];
List<TileModel> visiblePairs = <TileModel>[];
int points = 0;
bool selected = false;
String selectedImageAssetPath = "";
int selectedTileIndex = 0;

List<TileModel> getPairs() {
  List<TileModel> pairs = <TileModel>[];
  TileModel tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //1
  tileModel.setImageAssetPath('assets/fox.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //2
  tileModel.setImageAssetPath('assets/hippo.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //3
  tileModel.setImageAssetPath('assets/horse.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //4
  tileModel.setImageAssetPath('assets/monkey.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //5
  tileModel.setImageAssetPath('assets/panda.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //6
  tileModel.setImageAssetPath('assets/parrot.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //7
  tileModel.setImageAssetPath('assets/rabbit.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //8
  tileModel.setImageAssetPath('assets/zoo.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  return pairs;
  // TileModel tileModel =
  //     TileModel(imageAssetPath: 'assets/fox.png', isSelected: false);
}

List<TileModel> getQuestions() {
  List<TileModel> pairs = <TileModel>[];
  TileModel tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //1
  tileModel.setImageAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //2
  tileModel.setImageAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //3
  tileModel.setImageAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //4
  tileModel.setImageAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //5
  tileModel.setImageAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //6
  tileModel.setImageAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //7
  tileModel.setImageAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //8
  tileModel.setImageAssetPath('assets/question.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  return pairs;
  // TileModel tileModel =
  //     TileModel(imageAssetPath: 'assets/fox.png', isSelected: false);
}
