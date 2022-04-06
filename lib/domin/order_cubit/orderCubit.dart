import 'dart:async';
import 'package:admin/data/api/order_api.dart';
import 'package:admin/data/model/product.dart';
import 'package:admin/domin/order_cubit/orderStates.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCubit extends Cubit<OrderStates>{
  static OrderCubit get(context)=>BlocProvider.of(context);
  List <product>o_list=[];
  late StreamSubscription<List<product>>subscription;
  OrderCubit() : super(GetOrderLoading()){
    subscription=OrderApi().getOrder().listen((orders) {
      emit(GetOrderSuccess(orders));
    })..onError((e){
      emit(GetOrderFailed(e));
    });
  }
  @override
  Future <void>Close()async{
    await subscription.cancel();
    super.close();
  }

}