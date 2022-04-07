import 'package:admin/constant/Screens.dart';
import 'package:admin/presentation/module/AddPro.dart';
import 'package:admin/presentation/module/Edit_Product.dart';
import 'package:admin/presentation/module/Home.dart';
import 'package:admin/presentation/module/LogInScreen.dart';
import 'package:admin/presentation/module/Orders.dart';
import 'package:admin/presentation/module/Products.dart';
import 'package:admin/presentation/module/SplashScreen.dart';
import 'package:admin/presentation/module/orderinfo.dart';
import 'package:flutter/material.dart';
class AppRoute{
Route?onGenerateRoute(RouteSettings routeSettings){

switch(routeSettings.name)
{
  case splash:
return MaterialPageRoute(builder: (_)=>SplashScreen(nextScreen: LogInScreen(),));
  case logIn:
    return MaterialPageRoute(builder: (_)=>LogInScreen());
  case addProduct:
    return MaterialPageRoute(builder: (_)=>Home());
  case productpath:
    return MaterialPageRoute(builder: (_)=>Products());
  case add:
    return MaterialPageRoute(builder: (_)=>AddProd());
  case edit:
    return MaterialPageRoute(builder: (_)=>Edit_product_Screen());

  case order:
    return MaterialPageRoute(builder: (_)=>Orders());

}
}
}