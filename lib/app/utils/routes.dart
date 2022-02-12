part of '../utils.dart';

class PortfolioRoutes {
  PortfolioRoutes._();

  static String home([bool fullRoute = true]) => "/";
  static String projects([bool fullRoute = true]) => fullRoute ? "/projects/all/" : "/all/";
  static String info([bool fullRoute = true]) => fullRoute ? "/info/" : "/";
}
