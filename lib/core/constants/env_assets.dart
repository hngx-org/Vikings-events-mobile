class EnvAssets {
  static const String _baseSvg = "assets/svgs/";

  static String _getSvgPath(String pathName) {
    pathName = "$pathName.svg";
    return _baseSvg + pathName;
  }

  static const String _baseImage = "assets/pngs/";

  static String _getImagePath(String pathName) {
    pathName = "$pathName.png";
    return _baseImage + pathName;
  }

  /// SVGs
  /// These are string variables that hold the paths of the different Svg assets in the project.
  /// They can be called by declaring SvgPicture.asset(EnvImages.stringName) eg SvgPicture.asset(EnvImages.add)
  /// e.g static String addCircleSvg = _getSvgPath('add_circle');
  /// 
  

    /// PNGs
  /// These are string variables that hold the paths of the different png assets in the project.
  /// They can be called by declaring AfmImageHelper.pngJpg(AfmAssets.stringName) eg  AfmImageHelper.pngJpg(imagePath: AfmAssets.personAvatarPng,),
 /// static String personAvatarPng = _getImagePath('profile_avatar');
  
}
