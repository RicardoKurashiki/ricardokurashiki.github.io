part of '../utils.dart';

extension TextStyleExtension on TextStyle {
  ///height: 1
  TextStyle get heightCenter => copyWith(height: 1);

  ///height: 1.2
  TextStyle get heightCompact => copyWith(height: 1.2);

  ///height: 1.5
  TextStyle get heightRegular => copyWith(height: 1.5);

  ///height: 1.7
  TextStyle get heightMedium => copyWith(height: 1.7);

  ///height: 2
  TextStyle get heightLong => copyWith(height: 2);

  ///fontWeight: w800
  TextStyle get weightExtraBold => copyWith(fontWeight: FontWeight.w800);

  ///fontWeight: w700
  TextStyle get weightBold => copyWith(fontWeight: FontWeight.w700);

  ///fontWeight: w600
  TextStyle get weightSemibold => copyWith(fontWeight: FontWeight.w600);

  ///fontWeight: w500
  TextStyle get weightMedium => copyWith(fontWeight: FontWeight.w500);

  ///fontWeight: w400
  TextStyle get weightRegular => copyWith(fontWeight: FontWeight.w400);

  ///spacing: 0
  TextStyle get spacingRegular => copyWith(letterSpacing: 0);

  ///spacing: 0.6
  TextStyle get spacingMedium => copyWith(letterSpacing: 0.6);

  ///spacing: 1
  TextStyle get spacingExtend => copyWith(letterSpacing: 1);

  ///fontSize: 10
  TextStyle get sizeXXSmall => copyWith(fontSize: 10);

  ///fontSize: 12
  TextStyle get sizeXSmall => copyWith(fontSize: 12);

  ///fontSize: 14
  TextStyle get sizeSmall => copyWith(fontSize: 14);

  ///fontSize: 16
  TextStyle get sizeDefault => copyWith(fontSize: 16);

  ///fontSize: 19
  TextStyle get sizeMedium => copyWith(fontSize: 19);

  ///fontSize: 24
  TextStyle get sizeLarge => copyWith(fontSize: 24);

  ///fontSize: 32
  TextStyle get sizeXLarge => copyWith(fontSize: 32);

  ///fontSize: 40
  TextStyle get sizeXXLarge => copyWith(fontSize: 40);

  ///fontSize: 48
  TextStyle get sizeXXXLarge => copyWith(fontSize: 48);

  ///fontSize: 56
  TextStyle get sizeXXXXLarge => copyWith(fontSize: 56);

  TextStyle withColor(Color? color) => copyWith(color: color);
  TextStyle size(double value) => copyWith(fontSize: value);
  TextStyle withHeight(double value) => copyWith(height: value);
}

class PortfolioTexts {
  static const fontFamily = "Montserrat";
  static TextStyle theme({
    Color? color = Colors.black,
    double fontSize = 14.0,
    FontWeight fontWeight = FontWeight.w400,
    FontStyle fontStyle = FontStyle.normal,
    double? letterSpacing,
    double? height,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      height: height,
    );
  }
}
