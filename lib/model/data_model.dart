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
      description: json["description"],
      img: json["img"],
      location: json["location"],
      name: json["name"],
      people: json["people"],
      price: json["price"],
      stars: json["location"],
    );
  }
}
