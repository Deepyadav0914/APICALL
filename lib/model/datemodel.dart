import 'dart:convert';

Usermodel usermodelFromJson(String str) => Usermodel.fromJson(json.decode(str));

String usermodelToJson(Usermodel data) => json.encode(data.toJson());

class Usermodel {
  List<Datum> data;

  Usermodel({
    required this.data,
  });

  factory Usermodel.fromJson(Map<String, dynamic> json) => Usermodel(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String description;
  String imgurl;
  String codeurl;
  String date;
  String title;

  Datum({
    required this.description,
    required this.imgurl,
    required this.codeurl,
    required this.date,
    required this.title,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    description: json["description"],
    imgurl: json["imgurl"],
    codeurl: json["codeurl"],
    date: json["date"],
    title: json["title"]!,
  );

  Map<String, dynamic> toJson() => {
    "description": description,
    "imgurl": imgurl,
    "codeurl": codeurl,
    "date": date,
    "title": titleValues.reverse[title],
  };
}

enum Title {
  THE_100_SPINS,
  THE_10_SPINS_AND_70_M_COINS,
  THE_200_SPINS,
  THE_25_SPINS,
  THE_30_SPINS,
  THE_35_SPINS,
  THE_40_SPINS,
  THE_45_SPINS,
  THE_50_SPINS,
  THE_60_SPINS,
  THE_70_SPINS,
  THE_80_SPINS
}

final titleValues = EnumValues({
  "100 Spins": Title.THE_100_SPINS,
  "10 Spins and 70M Coins": Title.THE_10_SPINS_AND_70_M_COINS,
  "200 Spins": Title.THE_200_SPINS,
  "25 Spins": Title.THE_25_SPINS,
  "30 Spins": Title.THE_30_SPINS,
  "35 Spins": Title.THE_35_SPINS,
  "40 Spins": Title.THE_40_SPINS,
  "45 Spins": Title.THE_45_SPINS,
  "50 Spins": Title.THE_50_SPINS,
  "60 Spins": Title.THE_60_SPINS,
  "70 Spins": Title.THE_70_SPINS,
  "80 Spins": Title.THE_80_SPINS
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
