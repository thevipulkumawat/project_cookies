class TileModel {
  String imageAssetPath;
  bool isSelected;

  TileModel({required this.imageAssetPath, required this.isSelected});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setIsSelected(bool getIsSelected) {
    isSelected = getIsSelected;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  bool getIsSelected() {
    return isSelected;
  }
}
