import 'package:consforc/config/export.dart';

class ConsforcTextField extends TextField {
  ConsforcTextField.borderLess({
    super.key,
    String? hint,
    String? fontFamily,
    double? fontSize,
    TextAlign? textAlign,
    Color? color,
    Color? filledColor,
    Color? hintColor,
    double? hintFontSize,
    FocusNode? focusNode,
    Color? cursoeColor,
    FontWeight? fontWeight,
    Widget? suffixIcon,
    double? letterSpacing,
    TextEditingController? controller,
    ValueChanged<String>? onChange,
    TextInputType? keyBoardType,
  }) : super(
          textAlign: textAlign ?? TextAlign.center,
          style: ConsforcTheme.themeData.textTheme.displayLarge.copyWith(
            fontSize: fontSize,
            fontFamily: fontFamily ?? "Sans",
            color: color,
            letterSpacing:  letterSpacing ?? -1.5,
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
          cursorColor: cursoeColor ?? APPColors.appBlack,
          keyboardType: keyBoardType ?? TextInputType.text,
          onChanged: onChange,
          controller: controller,
          focusNode: focusNode ??  FocusNode(),
          decoration: InputDecoration(
            filled: true,
            fillColor: filledColor ?? APPColors.appWhite,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: hint ?? kETH,
            hintStyle: ConsforcTheme.themeData.textTheme.displayLarge.copyWith(
              fontSize: hintFontSize ?? 14.sp,
              fontFamily: fontFamily ?? 'Sans',
              letterSpacing:  letterSpacing ?? -1.5,
              fontWeight: fontWeight ?? FontWeight.normal,
              color: hintColor ?? APPColors.appTextGrey,
            ),
          ),
        );


  ConsforcTextField.border({
    super.key,
    String? hint,
    String? fontFamily,
    double? fontSize,
    double? hintFontSize,
    double? verticalContent,
    double? horizontalContent,
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
    Color? filledColor,
    Color? hintColor,
    Color? cursoeColor,
    Color? borderColor,
    FontWeight? fontWeight,
    double? letterSpacing,
    TextEditingController? controller,
    ValueChanged<String>? onChange,
    TextInputType? keyBoardType,
  }) : super(
    textAlign: textAlign ?? TextAlign.center,
    style: ConsforcTheme.themeData.textTheme.displayLarge.copyWith(
      fontSize: fontSize,
      fontFamily: fontFamily ?? "Urbanist",
      color: color,
      letterSpacing:  letterSpacing ?? -1.5,
      fontWeight: fontWeight ?? FontWeight.normal,
    ),
    onChanged: onChange,
    controller: controller,
    cursorColor: cursoeColor ?? APPColors.appBlack,
    keyboardType: keyBoardType ?? TextInputType.text,
    maxLines: maxLines ?? 3,
    decoration: InputDecoration(
      filled: true,
      fillColor: filledColor ?? APPColors.appWhite,

      contentPadding:
       EdgeInsets.symmetric(vertical:  verticalContent ?? 10.0, horizontal: horizontalContent ?? 15.0),
      border: OutlineInputBorder(
        borderSide:  BorderSide(color: borderColor ?? APPColors.borderGrey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide:  BorderSide(color: borderColor ?? APPColors.borderGrey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:  BorderSide(color: borderColor ?? APPColors.borderGrey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      hintText: hint ?? kETH,
      hintStyle: ConsforcTheme.themeData.textTheme.displayLarge.copyWith(
        fontSize: hintFontSize ?? 14.sp,
        fontFamily: fontFamily ?? 'Gosha',
        letterSpacing:  letterSpacing ?? -1.5,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: hintColor ?? APPColors.appTextGrey,
      ),
    ),
  );
}
