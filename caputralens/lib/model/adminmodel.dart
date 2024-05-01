class AdminModel{
  String image;
  String title;
  String deadline;
  String price;
  String place;
  String? id;
  String payment;


AdminModel({required this.image,required this.title,required this.deadline,required this.price,required this.place,required this.payment,this.id});

Map<String,dynamic>tojson(id)=>{
  "image":image,
  "title":title,
  "deadline":deadline,
  "price":price,
  "place":place,
  "payment":payment,
  "eventid":id
};

factory AdminModel.fromjson(Map<String,dynamic>json){
  return AdminModel(image: json["image"],title: json["title"], deadline: json["deadline"], price: json["price"], place: json["place"], payment: json["payment"],id: json["eventid"]);
}
}