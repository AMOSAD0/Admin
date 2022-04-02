import 'package:admin/constant/Screens.dart';
import 'package:admin/data/api/productApi.dart';
import 'package:admin/domin/product%20bloc/getproduct_Cubit.dart';
import 'package:admin/domin/product%20bloc/getproduct_Stat.dart';
import 'package:admin/presentation/module/Edit_Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Padding(
           padding: const EdgeInsets.all(50.0),
           child: InkWell(
             onTap: (){
               
             Navigator.pushNamed(context, productpath);
           //  ProductCubit.get(context).P_List=[];
             //ProductCubit.get(context).getAll();
  //  print(ProductCubit.get(context).P_List);
            
             },
             child: Container(
              height: 20.h,
              width: 85.w,
              color: Colors.grey[400],
              child:const Center(
                child:  Text('Product',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
                ),
              ),
                 ),
           ),
         ),
         //======================================//
          Padding(
           padding: const EdgeInsets.all(50.0),
           child: InkWell(
             onTap: (){
               
             },
             child: Container(
              height: 20.h,
              width: 85.w,
              color: Colors.grey[400],
              child:const Center(
                child:  Text('Order',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
                ),
              ),
                   ),
           ),
         ),
        ],
      ),
      
      );
    
    
  }
}
