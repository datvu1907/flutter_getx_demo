import 'package:get/get.dart';

import '../ model/response.dart';
class AppProvider extends GetConnect {

  Future<dynamic> getMethod({required String path, required dynamic query}) async {

    var headers = {
      'Content-Type' : 'application/json',
      'Accept': 'application/json',
    };
    Response response = await get( path, headers: headers,query: query);
    if (response.statusCode == 200) {

      return response.body;
    }   else {

      throw Exception(response.statusText);
    }
  }
}