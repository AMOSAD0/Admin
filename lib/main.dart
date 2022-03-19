import 'package:admin/constant/AppRoute.dart';
import 'package:admin/constant/blocObserver.dart';
import 'package:admin/data/localData/cashHelper.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();
  BlocOverrides.runZoned(
          (){
    runApp(AdminApp());
  },
  blocObserver: MyBlocObserver());
}
class AdminApp extends StatelessWidget {
  const AdminApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:(context, orientation, deviceType) =>  MaterialApp(
        onGenerateRoute: AppRoute().onGenerateRoute,
        useInheritedMediaQuery: true,
      ),
    );
  }
}
