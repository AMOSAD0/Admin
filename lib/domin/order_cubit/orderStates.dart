import 'package:admin/data/model/product.dart';

abstract class OrderStates{}
class GetOrderLoading extends OrderStates{}
class GetOrderSuccess extends OrderStates{
  final List orders;
  GetOrderSuccess(this.orders);
}
class GetOrderFailed extends OrderStates{
  final String err;
  GetOrderFailed(this.err);
}