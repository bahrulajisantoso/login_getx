import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:user_login/model/user_model.dart';

class Api {
  Future<List<UserModel>> user() async {
    try {
      final Dio dio = Dio();
      final response = await dio.get("https://dummyjson.com/users");

      if (response.statusCode == 200) {
        var data = userFromJson(response.data);
        return data;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return [];
  }
}
