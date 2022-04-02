// ignore_for_file: prefer_const_constructors

import 'package:admin/constant/Screens.dart';
import 'package:admin/data/model/product.dart';
import 'package:admin/domin/product%20bloc/getproduct_Cubit.dart';
import 'package:admin/domin/product%20bloc/getproduct_Stat.dart';
import 'package:admin/presentation/module/Edit_Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';


class Products extends StatelessWidget {
   Products({ Key? key }) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    List<product>list_p=ProductCubit.get(context).P_List;
    return BlocConsumer<ProductCubit,productStats>(
      listener: (context, state) {
        
      },
       builder: (context, state) {
       
      return Scaffold(
        body: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
                ,color: Colors.grey[300]),
                height: 70.h,
                width: 100.w,
                child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: ProductCubit.get(context).P_List.length,
                 itemBuilder:(context,index){
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: 20.h,
                       width: 20.w,
                       color: Colors.blue,
                       child: Column(
                         children: [
                           SizedBox(height: 5.h,),
                           Text(ProductCubit.get(context).P_List[index].Name!),
                           Padding(
                             padding: const EdgeInsets.only(top: 30.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                                        InkWell(
                               onTap: () {
                                 ProductCubit().deleteProduct(list_p[index].id);//ProductCubit.get(context).P_List[index].id);
                               //  ProductCubit.get(context).P_List.removeAt(index);
                                 //
                               },
                               child: CircleAvatar(
                                 child: Icon(Icons.delete_forever),
                               ),
                             ),

                              InkWell(
                               onTap: () {
                                 Navigator.pushNamed(context, edit);
                                // ProductCubit().edit_Product(list_p[index].id, product(Name: 'Ahmed',Price: '50'));
                               },
                               child: CircleAvatar(
                                 child: Icon(Icons.edit),
                               ),
                             ),
                               ],
                             ),
                           ),
                            
                         ],
                       ),
                     ),
                   );
                 } ),
              ),
            ),
            SizedBox(height: 10.h,),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, add);
            //    ProductCubit().addProduct();

                // ProductCubit.get(context).getAll();
              },
              child: Container(
                height: 6.h,
                width: 55.w,
                color: Colors.black,
                child: Center(child: Text('Add',style: TextStyle(color: Colors.white,fontSize: 20.sp),)),
              ),
            ),
          ],
        ),
        
      );
       }
    );
  }
}