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
        body: Column(
          children: [
            InkWell(
              onTap: () {
                ProductCubit().addProduct();
               // ProductCubit.get(context).getAll();
              },
              child: Container(
                height: 20.h,
                 width: 20.w,
                 color: Colors.black,
              ),
            ),
            Container(
              height: 70.h,
              width: 100.w,
              child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: ProductCubit.get(context).P_List.length,
               itemBuilder:(context,index){
                 return Container(
                   height: 20.h,
                   width: 20.w,
                   color: Colors.blue,
                   child: Column(
                     children: [
                       Text(ProductCubit.get(context).P_List[index].Name!),
                       InkWell(
                         onTap: () {
                           ProductCubit().deleteProduct(ProductCubit.get(context).P_List[index].id!);
                         //  ProductCubit.get(context).P_List.removeAt(index);
                           
                         },
                         child: CircleAvatar(
                           child: Icon(Icons.delete_forever),
                         ),
                       )
                     ],
                   ),
                 );
               } ),
            ),
          ],
        ),
        
      );
       }
    );
  }
}