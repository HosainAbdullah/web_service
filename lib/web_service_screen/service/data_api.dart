import 'dart:io';
import 'package:dio/dio.dart';
import 'package:web_service_app/web_service_screen/model/data_model.dart';

class DataApi {
  late final Dio dio;

  DataApi()
      : dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));

  Future<List<DataModel>?> fetchData() async {
    try {
      final response = await dio.get('');

      if (response.statusCode == HttpStatus.ok) {
        final dataReturn = response.data;
        if (dataReturn is List) {
          return dataReturn.map((e) => DataModel.fromJson(e)).toList();
        }
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<bool> createData(DataModel model) async {
    try {
      final response = await dio.post('', data: model.toJson());
      return response.statusCode == HttpStatus.created;
    } catch (e) {
      print(e);
    }
    return false;
  }

  Future<bool> updateData(DataModel model, int id) async {
    try {
      final response = await dio.put('', data: model.toJson());
      return response.statusCode == HttpStatus.ok;
    } catch (e) {
      print(e);
    }
    return false;
  }

  Future<bool> deleteData() async {
    try {
      final response = await dio.delete('');
      return response.statusCode == HttpStatus.ok;
    } catch (e) {
      print(e);
    }
    return false;
  }
}
