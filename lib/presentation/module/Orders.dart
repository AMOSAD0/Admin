import 'package:admin/domin/order_cubit/orderCubit.dart';
import 'package:admin/domin/order_cubit/orderStates.dart';
import 'package:admin/presentation/module/orderinfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // print( OrderCubit.get(context).o_list);
    return BlocConsumer<OrderCubit,OrderStates>(

      listener: (context,state){},
      builder:(context, state) =>  Scaffold(
        body: Center(
          child: Container(
            height: 70.h,width: 90.w,
            color: Colors.grey,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount:OrderCubit.get(context).o_list.length,
                itemBuilder: (context,index)=>Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:(context)=>OrderInfo(
                                   listOrder: OrderCubit.get(context).o_list['Oerder ${index+1}']
                                 )));
                    },
                    child: Container(
                      height: 10.h,width: 10.w,
                      color: Colors.blue,
                      child: Center(child: Text('Order ${index+1}'))//OrderCubit.get(context).o_list[index].Name!),
                    ),
                  ),
                )
            )
          ),
        ),
      ),
    );
  }
}
