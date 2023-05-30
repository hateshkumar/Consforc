import 'package:consforc/config/export.dart';

class ConsforcText extends Text {
  ConsforcText.headerText({
    super.key,
    String? text,
    double? fontSize,
    TextAlign? textAlign,
    Color? color,
  }) : super(text!,
            textAlign: textAlign ?? TextAlign.center,
            style: ConsforcTheme.themeData.textTheme.displayLarge.copyWith(fontSize: fontSize,color: color));

  ConsforcText.subHeaderText({
    super.key,
    String? text,
    int? maxLines,
    double? fontSize,
    String? fontFamily,

    FontWeight? fontWeight,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    double? letterSpacing,
    double? height,
    double? wordSpacing,
    TextDecoration? textDecoration,
  }) : super(text!,
            maxLines: maxLines,
            textAlign: textAlign ?? TextAlign.center,
            overflow: overflow ?? TextOverflow.visible,
            style: ConsforcTheme.themeData.textTheme.labelSmall
                .copyWith(color: color ?? const Color(0xff000000), fontSize: fontSize ?? 14,
                fontFamily: fontFamily ?? 'Sans',
                fontWeight: fontWeight ?? FontWeight.normal,height: height ?? 0 ,letterSpacing: letterSpacing,wordSpacing: wordSpacing,decoration: textDecoration));
}
