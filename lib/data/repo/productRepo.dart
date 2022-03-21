import 'package:admin/data/api/productApi.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/product.dart';

class productRepo{
 QuerySnapshot<Map<String,dynamic>>? Val;
List<product> products=[];
productRepo(this.products);
  getProd(){
  productApi api= productApi() ;
  api.getProudcts().then((value){
    value.docs.forEach((e){
    product p = product.fromJson(e.data());
    p.id=e.id;
   // p.Name=e.Name;
    //p.Price=e.Price;
    products.add(p);
  });
  //return products;
  });
 /* Val!.docs.forEach((e){
    product p = product.fromJson(e.data());
    p.id=e.id;
   // p.Name=e.Name;
    //p.Price=e.Price;
    products.add(p);
  });*/
    return products;
  }
}