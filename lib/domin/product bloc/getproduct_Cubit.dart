import 'dart:async';

import 'package:admin/data/api/productApi.dart';
import 'package:admin/data/model/product.dart';
import 'package:admin/data/repo/productRepo.dart';
import 'package:admin/domin/product%20bloc/getproduct_Stat.dart';
import 'package:admin/presentation/module/Products.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<productStats>
{
  late StreamSubscription<List<product>> subscription;
 ProductCubit():super(loading()){
   subscription=productApi(P_List).getProudcts().listen((Products) { 
emit(Succes());
   })..onError((e){
     emit(Faile()); 
   });
 }
 @override
 Future <void>Close()async{
   await subscription.cancel();
   super.close();
 }
 static ProductCubit get(context)=>BlocProvider.of(context);
  List <product>P_List=[];
  //product p =product();

 /*getAll(){
   emit(loading());
   productApi p= productApi(P_List);
     p.getProudcts().then((value){
     P_List=value;
     emit(Getproduct());
   });
 emit(Succes());
 }
*/
 addProduct(){
   emit(loading());
   productApi p=productApi(P_List);
   p.addproduct();/*.then((value){
     emit(Succes());
   });*/
 }

 deleteProduct(p){
   emit(loading());
   productApi ap =productApi(P_List);
   ap.deleteproduct(p).then((){
     emit(Succes());
   });
 }

}