import 'package:admin/data/model/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class productApi{
var Val;
  
  getProudcts()async{
    await FirebaseFirestore.instance.collection('Products').get().then((value) {
      Val=value;
    }).catchError((onError){
      print(onError);
    });
    return Val;
  }
}