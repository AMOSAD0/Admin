class product{
  String? Name;
  String? Price;
  String? id;

  product({this.Name,this.Price,this.id});

  toJson(){
    return{
      'Name':Name,
      'Price':Price,
      'id':id,
    };
  }

  product.fromJson(Map<String,dynamic>json){
    id=json['id'];
    Name=json['Name'];
    Price=json['Price'];
  }
}