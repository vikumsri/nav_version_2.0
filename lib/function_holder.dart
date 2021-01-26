import 'package:shared_preferences/shared_preferences.dart';

class FunctionHolder{
  //fake login method. Write 1 if login sucess
  Future<void> loginUser(SharedPreferences prefs) async {

    // set value
    await prefs.setInt('loginStatus', 1);
  }

  //fake check user loggged in status
  Future<bool> checkLoggedinStatus(SharedPreferences prefs) async {
    if (await prefs.containsKey('loginStatus')) {
      return true;
    }
    return false;
  }

  //fake logout
  void logoutUser(SharedPreferences prefs) async {
    await prefs.remove('loginStatus');
  }
}