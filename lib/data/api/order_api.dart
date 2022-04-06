import 'package:admin/data/model/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class OrderApi{
  const OrderApi();
  Stream<List<product>>getOrder(){
    final ref=FirebaseFirestore.instance.collection('Orders');
    return ref.snapshots().map((event){
      final orders=<product>[];
      for(var doc in event.docs){
        final order=product.fromJson(doc.data());
        orders.add(order);
      }
      return orders;
    });
  }
}