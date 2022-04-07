import 'dart:convert';

import 'package:admin/data/model/product.dart';
import 'package:flutter/cupertino.dart';

class Order{
  List  listOfName=[];
 //Map <String,String>maptOfNames=new Map();
/*
 ;
   

convrt(List<product> list){
  int i=1;
  for(product e in list){
    maptOfNames['Name $i'.toString()]=e.Name.toString();
    i=i+1;
    //print(maptOfNames);
  }
  return maptOfNames;
}*/

Order.fromJson(Map<String, dynamic> json){
  listOfName=json.values.toList();
 
//return listOfName;
  
}

/*tojson(){
  return jsonEncode(maptOfNames);
}*/


}