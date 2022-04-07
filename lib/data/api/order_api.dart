import 'package:admin/data/model/order.dart';
import 'package:admin/data/model/product.dart';
import 'package:admin/presentation/module/Orders.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class OrderApi{
  Map ordemrs={};
   OrderApi(this.ordemrs);
  Stream<Map>getOrder(){
    final ref=FirebaseFirestore.instance.collection('Orders');
    return ref.snapshots().map((event){
      final orders={};
      for(var doc in event.docs){
        int i=1;
        final order=Order.fromJson(doc.data());
        ordemrs['Oerder $i']=order.listOfName;
        i++;
      }
      return orders;
    });
  }
}