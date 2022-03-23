import 'package:admin/data/model/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class productApi{
//var Val;
List<product> products=[];
productApi(this.products);
//product p =new product();
  
  getProudcts()async{

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

  addproduct()async{
    product p =new product(Name: 'C',Price: '20');
    await FirebaseFirestore.instance.collection('Products').add(p.toJson());
  }

  deleteproduct( p)async{
    
   await FirebaseFirestore.instance.collection('Products').doc(p).delete();
  }
}