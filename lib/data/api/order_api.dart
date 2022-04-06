import 'package:admin/data/model/order.dart';
import 'package:admin/data/model/product.dart';
import 'package:admin/presentation/module/Orders.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class OrderApi{
  //List orders=[];
   OrderApi(orders);
  Stream<List>getOrder(){
    final ref=FirebaseFirestore.instance.collection('Orders');
    return ref.snapshots().map((event){
      final orders=[];
      for(var doc in event.docs){
        final order=Order.fromJson(doc.data());
        orders.add(order);
      }
      return orders;
    });
  }
}