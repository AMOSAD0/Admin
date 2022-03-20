import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Btton extends StatelessWidget {
  String? btn;
   Btton({Key? key,this.btn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 8.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        color: Colors.grey[500]
      ),
      child: Center(child: Text(btn!)),
    );
  }
}
