import 'package:json_annotation/json_annotation.dart';

part 'Models.g.dart';

@JsonSerializable()
class Photo {
  Data? data;
  Support? support;

  Photo({
    this.data,
    this.support,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}

@JsonSerializable()
class Data {
  int? id;
  String? email;
  // @JsonKey("")
  String? first_name;
  @JsonKey(name: 'last_name')
  String? LastName;
  String? avatar;

  Data({
    this.id,
    this.email,
    this.first_name,
    this.LastName,
    this.avatar,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Support {
  String? url;
  String? text;

  Support({
    this.url,
    this.text,
  });

  factory Support.fromJson(Map<String, dynamic> json) =>
      _$SupportFromJson(json);

  Map<String, dynamic> toJson() => _$SupportToJson(this);
}
