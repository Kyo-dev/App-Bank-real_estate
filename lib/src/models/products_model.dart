import 'dart:convert';

ScanPerson scanPersonFromJson(String str) => ScanPerson.fromJson(json.decode(str));

String scanPersonToJson(ScanPerson data) => json.encode(data.toJson());

class ScanPerson {
  int id;
  String title;
  String subtitle;
  String description;
  String typeProduct;

  ScanPerson({
      this.id,
      this.title,
      this.subtitle,
      this.description,
      this.typeProduct,
  });

  factory ScanPerson.fromJson(Map<String, dynamic> json) => new ScanPerson(
      id: json["id"],
      title: json["title"],
      subtitle: json["subtitle"],
      description: json["description"],
      typeProduct: json["type_product"],
  );

  Map<String, dynamic> toJson() => {
      "id": id,
      "title": title,
      "subtitle": subtitle,
      "description": description,
      "type_product": typeProduct,
  };
}
