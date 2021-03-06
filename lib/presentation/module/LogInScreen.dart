import 'package:admin/presentation/module/Home.dart';
import 'package:admin/presentation/widget/Button.dart';
import 'package:admin/presentation/widget/TextField.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class LogInScreen extends StatelessWidget {
  TextEditingController controller1=TextEditingController();
  TextEditingController controller2=TextEditingController();
  String? user,pass;

   LogInScreen({Key? key, this.user,this.pass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(

            children: [
              SizedBox(height: 15.h,),
              TextField1(secure: false,name:'User',hint: 'User',type: TextInputType.emailAddress,controller:controller1),
              TextField1(type:TextInputType.visiblePassword,name: 'Pass',secure: true,hint: 'Password',controller:controller2,),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Home()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: Btton(btn: 'LogIn',),
                  ))
            ],
          ),
    );
  }
}
