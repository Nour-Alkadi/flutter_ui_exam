import 'package:dio/dio.dart';
import 'package:flutter_ui_exam/model/data_model.dart';

abstract class DataService {
  Dio req = Dio();
  late Response response;
  String baseUrl = 'https://664dcb37ede9a2b55654e96c.mockapi.io/api/v1/people';

  Future<List<DataModel>> getAllData();
}

class dataSerivceImpl extends DataService {
  @override
  Future<List<DataModel>> getAllData() async {
    try {
      response = await req.get(baseUrl);

      if (response.statusCode == 200) {
        List<DataModel> data = List.generate(
          response.data.length,
          (index) => DataModel.fromMap(
            response.data[index],
          ),
        );
        return data;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
