
import 'package:flutter/material.dart';
import 'package:route_flutter/features/screen/presentation/pages/products_screen.dart';

class AppRoutes {
  static const String products = "/";


}

class Routes{
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name){
      case(AppRoutes.products):
        return MaterialPageRoute(builder: (context) =>const ProductsScreen(),);
      default :
        return MaterialPageRoute(builder: (context) => Scaffold(
          appBar: AppBar(
              title:const Text("No Routes",)
          ),
        ),);
    }

  }
}