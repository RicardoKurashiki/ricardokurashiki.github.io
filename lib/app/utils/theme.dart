part of '../utils.dart';

ThemeData customThemeData(BuildContext context) => ThemeData(
      textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      fontFamily: PortfolioTexts.fontFamily,
      primaryColor: PortfolioColors.blue,
      backgroundColor: PortfolioColors.white,
      appBarTheme: AppBarTheme(
        color: PortfolioColors.white,
        titleTextStyle: PortfolioTexts.theme(),
      ),
    );
