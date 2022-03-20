import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class AddProductScreen extends StatelessWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(  body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Padding(
         padding: const EdgeInsets.all(50.0),
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
       //======================================//
        Padding(
         padding: const EdgeInsets.all(50.0),
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
      ],
    ),
    );
  }
}
