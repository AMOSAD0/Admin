import 'package:admin/constant/AppRoute.dart';
import 'package:admin/constant/blocObserver.dart';
import 'package:admin/data/localData/cashHelper.dart';
import 'package:admin/domin/product%20bloc/getproduct_Cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();
  await Firebase.initializeApp();
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
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context) => ProductCubit())),
      ],
      child: Sizer(
        builder:(context, orientation, deviceType) =>  MaterialApp(
          onGenerateRoute: AppRoute().onGenerateRoute,
          useInheritedMediaQuery: true,
        ),
      ),
    );
  }
}
