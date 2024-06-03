import 'package:dio/dio.dart';
import 'package:flutter_ui_exam/core/getit.dart';
import 'package:flutter_ui_exam/model/username_model.dart';


import 'package:shared_preferences/shared_preferences.dart';


abstract class userService {
  Dio req = Dio();
  late Response response;
  String url = "https://665de4f1e88051d60408bc44.mockapi.io/api/v1/username";

  Future<bool> logIn(usernameModel user);
}

class AuthSeviceImp extends userService {
  @override
  Future<bool> logIn(usernameModel user) async {
      try {
      response = await req.post(url, data: user.toMap());
      if (response.statusCode == 201) {
            getuser.get<SharedPreferences>().setString('username',user.username );

        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      print(e.message);
      return false;
    }
  }
  
}