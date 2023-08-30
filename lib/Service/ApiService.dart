import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../Models/Models.dart';
import '../Models/UserModel.dart';

part 'ApiService.g.dart';

@RestApi(baseUrl: "https://reqres.in/api")
abstract class PhotoClient {
  factory PhotoClient(Dio dio) = _PhotoClient;
  @GET("/users/{id}")
  Future<Photo> getPhoto(@Path("id") String id);
}

@RestApi(baseUrl: "https://dummyjson.com/")
abstract class Client {
  factory Client(Dio dio) = _Client;
  @GET("/users")
  Future<Welcome> getPhoto();
}
