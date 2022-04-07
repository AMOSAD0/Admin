import 'dart:async';
import 'package:admin/data/api/order_api.dart';
import 'package:admin/data/model/product.dart';
import 'package:admin/domin/order_cubit/orderStates.dart';
import 'package:admin/domin/product%20bloc/getproduct_Stat.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCubit extends Cubit<OrderStates>{
  late StreamSubscription<Map>subscription;
 
  
  OrderCubit() : super(GetOrderLoading()){
    subscription=OrderApi(o_list).getOrder().listen((orders) {
      emit(GetOrderSuccess());
    })..onError((e){
      emit(GetOrderFailed(e));
    });
  }
  @override
  Future <void>Close()async{
    await subscription.cancel();
    super.close();
  }
   static OrderCubit get(context)=>BlocProvider.of(context);
  Map o_list={};

}