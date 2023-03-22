import 'package:flutter/material.dart';
import 'package:my_app/data_sources/service_class.dart';
import 'package:my_app/model/data_model.dart';

class DataProvider extends ChangeNotifier {
  DataModel? post;
  bool loading = false;

  getPostData() async {
    loading = true;
    post = (await getSinglePostData())!;
    loading = false;

    notifyListeners();
  }
}