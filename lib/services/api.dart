import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Api {
  Future<Map<String, dynamic>> user() async {
    try {
      final Dio dio = Dio();
      final response = await dio.get('https://dummyjson.com/users');

      if (response.data != null) {
        // debugPrint(response.data.toString());
        return response.data;
      }
    } catch (e) {
      debugPrint(e.toString());
    }

    return {};
  }
}
