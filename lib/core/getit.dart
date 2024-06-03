import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt getuser = GetIt.instance;

setup()async{
  getuser.registerSingleton(await SharedPreferences.getInstance());
  

}