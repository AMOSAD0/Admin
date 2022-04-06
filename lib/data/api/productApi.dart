import 'package:admin/data/model/product.dart';
import 'package:admin/presentation/module/Products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class productApi{
//var Val;

List<product> products=[];
productApi(this.products);
product p =new product();
Stream<List<product>>getProudcts(){
final ref=FirebaseFirestore.instance.collection('Products');
return ref.snapshots().map((event) {
  final proudcts=<product>[];
  if(products.isNotEmpty){
    products.clear();
     for(var doc in event.docs){
    final prod=product.fromJson(doc.data());
    prod.id=doc.id;
    products.add(prod);
  }
  }
  else{
     for(var doc in event.docs){
    final prod=product.fromJson(doc.data());
    prod.id=doc.id;
    products.add(prod);
  }}
  return proudcts;
});
}
  
 /* getProudcts()async{

    await FirebaseFirestore.instance.collection('Products').get().then((value){
     value.docs.forEach((element) { 
       product p = product.fromJson(element.data());
       p.id=element.id;
    //p.Name=element.Name;
    //p.Price=element.Price;
        products.add(p);
     }
     );
     
    }).catchError((onError){
      print(onError);
      print(false);
    });
    return products;
  }
*/
   addproduct(name,price){
    product p =new product(Name: name,Price: price);
    FirebaseFirestore.instance.collection('Products').add(p.toJson());
    
   
    //product p =new product(Name: 'C',Price: '20');
     //FirebaseFirestore.instance.collection('Products').add(p.toJson());
     
  }

  deleteproduct(p)async{
    
   await FirebaseFirestore.instance.collection('Products').doc(p.toString()).delete();
  }

  editproduct(p,product data)async{
    await FirebaseFirestore.instance.collection('Products').doc(p).update(data.toJson());
  }
}