import 'package:flutter/material.dart';

import '../Models/detail_page_model.dart';
import '../Views/DetailsScreen/details_screen.dart';
import '../Views/HomeScreen/home_screen.dart';

class Routes {
  static String homeScreen = "/homeScreen";
  static String detailsScreen = "/detailScreen";

  static MaterialPageRoute? generateRoute(RouteSettings routeSettings) {
    final Map<String, WidgetBuilder> routes = {
      Routes.homeScreen: (context) => const HomeScreen(),
      Routes.detailsScreen: (context){
        DetailPageModel detailPageModel = routeSettings.arguments as DetailPageModel;
        return DetailsScreen(detailPageModel: detailPageModel);
      },
    };
    final WidgetBuilder? builder = routes[routeSettings.name];
    return (builder != null) ? MaterialPageRoute(builder: builder) : null;
  }
}
