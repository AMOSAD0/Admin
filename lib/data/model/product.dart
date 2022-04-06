// class product{
//   String? Name;
//   String? Price;
//   String? id;
//
//   product({this.Name,this.Price,});
//
//   toJson(){
//     return{
//       'Name':Name,
//       'Price':Price,
//
//
//     };
//   }
//
//   product.fromJson(Map<String,dynamic>json){
//     id=json['id'];
//     Name=json['Name'];
//     Price=json['Price'];
//   }
// }
class product {
  String? Name, Price, id;
  product({this.Name, this.Price, this.id});
  toJson() {
    return {'Name': Name, 'Price': Price};
  }

  product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    Name = json['Name'];
    Price = json['Price'];
  }
}
