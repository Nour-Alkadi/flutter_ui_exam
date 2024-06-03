import 'package:dio/dio.dart';
import 'package:flutter_ui_exam/model/people_model.dart';


String url = "https://664dcb37ede9a2b55654e96c.mockapi.io/api/v1/people";
 Future<List<peopleModel>> getpeopleData() async {
  Dio req = Dio();
  Response response = await req.get(url);
  //print(response);
  try {
    List <peopleModel> people =List.generate(
      response.data.length,
      (index) => peopleModel.fromMap( response.data[index],
      ),
  );
   return people;
  } catch (e) {
   print(e);
   return [];
  }
    
}

