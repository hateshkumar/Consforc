import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class $AssetsSVGGen {
  const $AssetsSVGGen();

  SvgGenImage get menu => const SvgGenImage('assets/svg/menu.svg');

  SvgGenImage get happy => const SvgGenImage('assets/svg/happy.svg');

  SvgGenImage get graduation => const SvgGenImage('assets/svg/graduation.svg');

  SvgGenImage get playlist => const SvgGenImage('assets/svg/playlist.svg');

  SvgGenImage get notebook => const SvgGenImage('assets/svg/notebook.svg');

  SvgGenImage get play => const SvgGenImage('assets/svg/play.svg');

  SvgGenImage get home => const SvgGenImage('assets/svg/home.svg');

  SvgGenImage get course => const SvgGenImage('assets/svg/course.svg');

  SvgGenImage get saved => const SvgGenImage('assets/svg/saved.svg');

  SvgGenImage get playlist_home =>
      const SvgGenImage('assets/svg/playlist_home.svg');
}

class $AssetsPNGGen {
  const $AssetsPNGGen();

  PngGenImage get girl => const PngGenImage('assets/png/presentation.jpg');

  PngGenImage get divider => const PngGenImage('assets/png/divider.png');
}

class Assets {
  Assets._();

  static const $AssetsSVGGen svgs = $AssetsSVGGen();
  static const $AssetsPNGGen png = $AssetsPNGGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
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
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
    );
  }

  String get path => _assetName;
}

class PngGenImage {
  const PngGenImage(this._assetName);

  final String _assetName;

  Image png({
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
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      color: color,
      colorBlendMode: colorBlendMode,
      excludeFromSemantics: excludeFromSemantics,
    );
  }

  String get path => _assetName;
}
