import 'package:admin/constant/Screens.dart';
import 'package:admin/presentation/module/AddProductScreen.dart';
import 'package:admin/presentation/module/LogInScreen.dart';
import 'package:admin/presentation/module/SplashScreen.dart';
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
    return MaterialPageRoute(builder: (_)=>AddProductScreen());
}
}
}