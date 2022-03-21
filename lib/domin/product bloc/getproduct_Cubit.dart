import 'package:admin/data/model/product.dart';
import 'package:admin/data/repo/productRepo.dart';
import 'package:admin/domin/product%20bloc/getproduct_Stat.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<productStats>
{
 ProductCubit():super(loading());
 static ProductCubit get(context)=>BlocProvider.of(context);
 List<product>P_List=[];

 getAll(){
   productRepo p= productRepo(P_List);
   p.getProd().then((value){
     P_List=value;
     emit(Succes());
   });
 }

}