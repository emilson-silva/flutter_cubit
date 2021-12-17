class DataModel {
  String name;
  String img;
  int price;
  int people;
  int stars;
  String description;
  String location;

  DataModel({
    required this.name,
    required this.img,
    required this.price,
    required this.people,
    required this.stars,
    required this.description,
    required this.location,
  });
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        description: json["description"] as String,
        img: json["img"] as String,
        location: json["location"],
        name: json["name"] as String,
        people: json["people"] as int,
        price: json["price"] as int,
        stars: json["stars"] as int);
  }

  
}
