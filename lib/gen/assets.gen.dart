/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/back.png
  AssetGenImage get back => const AssetGenImage('assets/icon/back.png');

  /// File path: assets/icon/booking.png
  AssetGenImage get booking => const AssetGenImage('assets/icon/booking.png');

  /// File path: assets/icon/bus.png
  AssetGenImage get bus => const AssetGenImage('assets/icon/bus.png');

  /// File path: assets/icon/calendar.png
  AssetGenImage get calendar => const AssetGenImage('assets/icon/calendar.png');

  /// File path: assets/icon/filled_heart.png
  AssetGenImage get filledHeart =>
      const AssetGenImage('assets/icon/filled_heart.png');

  /// File path: assets/icon/food.png
  AssetGenImage get food => const AssetGenImage('assets/icon/food.png');

  /// File path: assets/icon/heart.png
  AssetGenImage get heart => const AssetGenImage('assets/icon/heart.png');

  /// File path: assets/icon/home.png
  AssetGenImage get home => const AssetGenImage('assets/icon/home.png');

  /// File path: assets/icon/location.png
  AssetGenImage get location => const AssetGenImage('assets/icon/location.png');

  /// File path: assets/icon/map.png
  AssetGenImage get map => const AssetGenImage('assets/icon/map.png');

  /// File path: assets/icon/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icon/notification.png');

  /// File path: assets/icon/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/icon/profile.png');

  /// File path: assets/icon/wifi.png
  AssetGenImage get wifi => const AssetGenImage('assets/icon/wifi.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        back,
        booking,
        bus,
        calendar,
        filledHeart,
        food,
        heart,
        home,
        location,
        map,
        notification,
        profile,
        wifi
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
