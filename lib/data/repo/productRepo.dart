import 'package:admin/data/api/productApi.dart';

import '../model/product.dart';

class productRepo{
var Val;
List<product> products=[];
productRepo(this.products);
  getProd(){
  productApi api= productApi() ;
  Val=api.getProudcts();
  Val.docs.forEach((e){
    product p = product.fromJson(e.data());
    p.id=e.id;
    p.Name=e.Name;
    p.Price=e.Price;
    products.add(p);
  });
    return products;
  }
}