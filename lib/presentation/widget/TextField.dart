import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class TextField1 extends StatelessWidget {
  TextEditingController? controller=TextEditingController();
  String? hint,name;
  bool? secure;
  var type;
  TextField1({Key? key,this.hint,this.name,this.secure,this.type,this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 20.h,
          width: 85.w,
          child: Column(
              children:[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(name!,textAlign: TextAlign.center,style: TextStyle(fontSize: 15.sp)),
                ),
                Container(
                  height: 8.h,
                  width: 88.w,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextFormField(
                    controller: controller!,
                    keyboardType: type!,
                    obscureText: secure!,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                    border: InputBorder.none,
                        hintText: hint!
                        , disabledBorder: InputBorder.none

                    ),
                  ),
                ),]
          ),
        ),
      )
      ;
  }
}
