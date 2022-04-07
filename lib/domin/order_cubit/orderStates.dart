import 'package:admin/data/model/product.dart';

abstract class OrderStates{}
class GetOrderLoading extends OrderStates{}
class GetOrderSuccess extends OrderStates{
  
  GetOrderSuccess();
}
class GetOrderFailed extends OrderStates{
  final String err;
  GetOrderFailed(this.err);
}