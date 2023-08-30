// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      support: json['support'] == null
          ? null
          : Support.fromJson(json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'data': instance.data,
      'support': instance.support,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      email: json['email'] as String?,
      first_name: json['first_name'] as String?,
      LastName: json['last_name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.LastName,
      'avatar': instance.avatar,
    };

Support _$SupportFromJson(Map<String, dynamic> json) => Support(
      url: json['url'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$SupportToJson(Support instance) => <String, dynamic>{
      'url': instance.url,
      'text': instance.text,
    };
