import 'package:admin/data/model/product.dart';
import 'package:admin/domin/product%20bloc/getproduct_Cubit.dart';
import 'package:admin/domin/product%20bloc/getproduct_Stat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';


class Products extends StatelessWidget {
  const Products({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit,productStats>(
      listener: (context, state) {
        
      },
       builder: (context, state) {
       
      return Scaffold(
        body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: ProductCubit.get(context).P_List.length,
         itemBuilder:(context,index){
           return Container(
             height: 20.h,
             width: 20.w,
             color: Colors.blue,
             child: Text(ProductCubit.get(context).P_List[index].Name!),
           );
         } ),
        
      );
       }
    );
  }
}