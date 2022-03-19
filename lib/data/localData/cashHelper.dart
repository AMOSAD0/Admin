import 'package:shared_preferences/shared_preferences.dart';

class CashHelper{
static late SharedPreferences sharedPreferences;
static init()async{
  sharedPreferences=await SharedPreferences.getInstance();
}
}