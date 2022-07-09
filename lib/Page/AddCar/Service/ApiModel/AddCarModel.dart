import 'dart:convert';

List<AddCarModel> addCarModelFromJson(String str) => List<AddCarModel>.from(
    json.decode(str).map((x) => AddCarModel.fromJson(x)));

class AddCarModel {
  AddCarModel({
    required this.car_chassis,
    required this.car_status,
    required this.car_where,
    required this.car_position,
    required this.fullname,
    required this.lastname,
    required this.date,
    required this.time,
  });

  String car_chassis;
  String car_status;
  String car_where;
  String car_position;
  String fullname;
  String lastname;
  String date;
  String time;

  factory AddCarModel.fromJson(Map<String, dynamic> json) {
    return AddCarModel(
      car_chassis: json["car_chassis"],
      car_status: json["car_status"],
      car_where: json["car_where"],
      car_position: json["car_position"],
      fullname: json["fullname"],
      lastname: json["lastname"],
      date: json["date"],
      time: json["time"],
    );
  }
}
