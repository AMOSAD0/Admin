import 'package:admin/domin/product%20bloc/getproduct_Cubit.dart';
import 'package:admin/presentation/widget/TextField.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Edit_product_Screen extends StatelessWidget {
   Edit_product_Screen({Key? key}) : super(key: key);
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
                TextField1(name: 'Name',controller: cont1,secure: false,hint: 'name',type: TextInputType.name),
            TextField1(name: 'price',controller: cont2,secure: false,hint: 'price',type: TextInputType.number),
            SizedBox(height: 3.h,),
            InkWell(
              onTap: () {

                  ProductCubit().addProduct(cont1.text,cont2.text);

                // ProductCubit.get(context).getAll();
              },
              child: Container(
                height: 6.h,
                width: 55.w,
                color: Colors.black,
                child: Center(child: Text('Add',style: TextStyle(color: Colors.white,fontSize: 20.sp),)),
              ),
            ),

              ],),
        ),
      ),
    );
  }
}
