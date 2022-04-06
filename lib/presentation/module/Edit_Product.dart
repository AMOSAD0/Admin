import 'package:admin/data/model/product.dart';
import 'package:admin/domin/product%20bloc/getproduct_Cubit.dart';
import 'package:admin/presentation/module/Products.dart';
import 'package:admin/presentation/widget/TextField.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constant/Screens.dart';
class Edit_product_Screen extends StatelessWidget {
 var id;
 var name;
 var price;
 
   Edit_product_Screen({Key? key,this.id,this.name,this.price}) : super(key: key);

var cont1=TextEditingController();

var cont2=TextEditingController();
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Center(
        child: Container(
          height: 60.h,
          width: 90.w,
          child: ListView(children: [
                TextField1(name: 'Name',controller: cont1,secure: false,hint: name,type: TextInputType.name),
            TextField1(name: 'price',controller: cont2,secure: false,hint: price,type: TextInputType.number),
            SizedBox(height: 3.h,),
            InkWell(
              onTap: () {

                  ProductCubit().edit_Product(id, product(Name: cont1.text,Price: cont2.text));
Navigator.popAndPushNamed(context, productpath);
                // ProductCubit.get(context).getAll();
              },
              child: Container(
                height: 6.h,
                width: 55.w,
                color: Colors.black,
                child: Center(child: Text('Updata',style: TextStyle(color: Colors.white,fontSize: 20.sp),)),
              ),
            ),
              ],),
        ),
      ),
    );
  }
}
