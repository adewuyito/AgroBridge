// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/google_g.svg
  SvgGenImage get googleG => const SvgGenImage('assets/icons/google_g.svg');

  /// File path: assets/icons/google_g_2.svg
  SvgGenImage get googleG2 => const SvgGenImage('assets/icons/google_g_2.svg');

  /// File path: assets/icons/input_field_prefix.svg
  SvgGenImage get inputFieldPrefix =>
      const SvgGenImage('assets/icons/input_field_prefix.svg');

  /// File path: assets/icons/input_field_suffix.svg
  SvgGenImage get inputFieldSuffix =>
      const SvgGenImage('assets/icons/input_field_suffix.svg');

  /// File path: assets/icons/mail.svg
  SvgGenImage get mail => const SvgGenImage('assets/icons/mail.svg');

  /// File path: assets/icons/map_pin.svg
  SvgGenImage get mapPin => const SvgGenImage('assets/icons/map_pin.svg');

  /// File path: assets/icons/notification_bell.svg
  SvgGenImage get notificationBell =>
      const SvgGenImage('assets/icons/notification_bell.svg');

  /// File path: assets/icons/password_hide.svg
  SvgGenImage get passwordHide =>
      const SvgGenImage('assets/icons/password_hide.svg');

  /// File path: assets/icons/password_reveal.svg
  SvgGenImage get passwordReveal =>
      const SvgGenImage('assets/icons/password_reveal.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    googleG,
    googleG2,
    inputFieldPrefix,
    inputFieldSuffix,
    mail,
    mapPin,
    notificationBell,
    passwordHide,
    passwordReveal,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
