import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofitgetwithseriliazation/Models/UserModel.dart';

import '../Models/Models.dart';
import '../Service/ApiService.dart';

class GetData extends StatefulWidget {
  const GetData({super.key});

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get With Serilization with Retrofit")),
      body: Column(
        children: [
          _PhotoBody(context),
          _Photo(context),
        ],
      ),
    );
  }
}

FutureBuilder<Photo> _PhotoBody(BuildContext context) {
  final client = PhotoClient(Dio(BaseOptions(contentType: "application/json")));
  return FutureBuilder<Photo>(
    future: client.getPhoto("2"),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        // print(snapshot.data);
        final post = snapshot.data!.data;
        print(post!.first_name);
        print(post.LastName);
        // print(jokes!.length);
        // return Container();

        return ListTile(
          leading: Image.network(post.avatar!),
          title: Text("${post.first_name} ${post.LastName}"),
          subtitle: Text("${post.email}"),
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

FutureBuilder<Welcome> _Photo(BuildContext context) {
  final client = Client(Dio(BaseOptions(contentType: "application/json")));
  return FutureBuilder<Welcome>(
    future: client.getPhoto(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        // print(snapshot.data);
        final post = snapshot.data;
        print(post!.users!.length);
        print(post!.users![0].firstName);
        // print(post!.first_name);
        // print(post.LastName);
        // print(jokes!.length);
        return Container();

        // return ListTile(
        //   leading: Image.network(post.avatar!),
        //   title: Text("${post.first_name} ${post.LastName}"),
        //   subtitle: Text("${post.email}"),
        // );
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}
