import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert' as json;
import 'package:my_app/model/data_model.dart';
import 'dart:developer';

Future<DataModel?> getSinglePostData() async {
  DataModel? result;
  try {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts/2"),
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      },);
    if (response.statusCode == 200) {
      final item = json.jsonDecode(response.body);
      result = DataModel.fromJson(item);
    } else {
      print("error");
    }
  } catch (e) {
    print(e.toString());
  }
  return result;
}