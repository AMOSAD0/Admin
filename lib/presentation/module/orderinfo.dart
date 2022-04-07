import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class OrderInfo extends StatelessWidget {
   OrderInfo({ Key? key ,this.listOrder}) : super(key: key);
  List ?listOrder=[];
  @override
  Widget build(BuildContext context) {
    List listph20=[
'lib/PhoApp/heather-ford-teuvnOXOGVo-unsplash.png',
'lib/PhoApp/aurelien-lemasson-theobald-x00CzBt4Dfk-unsplash.png',
'lib/PhoApp/nathan-dumlao-zUNs99PGDg0-unsplash.png',
];
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child:ListView.builder(
          itemCount: listOrder!.length,
          itemBuilder:(context, index) =>  Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 20.h,
                     decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.deepOrange,
                          width: 1.w
                        ),
                     ),
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             height: 30.h,
                             width: 35.w,

                             decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage(listph20[index]),
                             fit: BoxFit.fill
                             ),
                             color: Colors.black,
                             borderRadius: BorderRadius.circular(20)
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [

                               Text(listOrder![index],
                               style: TextStyle(
                                 fontSize: 17.sp,
                                 fontWeight: FontWeight.bold
                               ),
                               ),
                               Text('209',
                               style: TextStyle(
                                 fontSize: 17.sp,
                                 fontWeight: FontWeight.bold
                               ),
                               ),
                               Text('1',
                               style: TextStyle(
                                 fontSize: 17.sp,
                                 fontWeight: FontWeight.bold
                               ),
                               ),
                             ],
                           ),
                         )
                       ],
                     ),

                   ),
                 )
           ) ,
      ),
    );
  }
}