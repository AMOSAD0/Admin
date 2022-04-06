import 'dart:convert';

import 'package:admin/data/model/product.dart';

class Order{

  Map <String,String>maptOfNames=new Map();
  List  listOfName=[]; 

convrt(List<product> list){
  int i=1;
  for(product e in list){
    maptOfNames['Name $i'.toString()]=e.Name.toString();
    i=i+1;
    //print(maptOfNames);
  }
  return maptOfNames;
}

Order.fromJson(Map<String, dynamic> json){
  for(int i =1;i<=json.length;i++){
listOfName[i]=json['Name $i'];
  }
   
}

/*tojson(){
  return jsonEncode(maptOfNames);
}*/


}