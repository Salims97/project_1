

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_1/controls/secure-storage.dart';
import 'package:project_1/controls/service-config.dart';

 var messagel, tokenl;
var urll = Uri.parse(ServiceConfig.domainNameServer + ServiceConfig.signin);


 var messager, tokenr;
var urlr = Uri.parse(ServiceConfig.domainNameServer + ServiceConfig.register);

class LoginApi {
 
  static Future<bool> loginAuth(String name, String password) async {
    var response = await http.post(
      urll,
      headers: {
        'Accept': 'application/json',
      },
      body: {
        //'name':'${user.name}',  نفس يلي تحتا
        'name': name,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      tokenl = jsonResponse['token'];
      print(tokenl);
      SecureStorage storage = SecureStorage();
      await storage.save(tokenl);
      print('done');

      return true;
    } else if (response.statusCode == 422) {
      var jsonResponse = jsonDecode(response.body);
      messagel = jsonResponse['message'];
      return false;
    } else if (response.statusCode == 401) {
      var jsonResponse = jsonDecode(response.body);
      messagel = jsonResponse['message'];
      return false;
    } else {
      return false;
    }
  }
}


class RegisterApi{

  var url = Uri.parse("");
  static Future<bool> registerAuth(String name,String gmail,String password,String phoneNumber) async {
    var response = await http.post(
      urlr,
      headers: {
        'Accept': 'application/json',
      },
      body: {
        //'name':'${user.name}',  نفس يلي تحتا
        'name': name,
        'gmail': gmail,
        'password': password,
        'phone': phoneNumber,
      },
    );
    print(response.statusCode);
    if (response.statusCode == 201) {
      var jsonResponse = jsonDecode(response.body);
      tokenr = jsonResponse['token'];
      SecureStorage storage = SecureStorage();
      await storage.save(tokenr);
      print('done');
      return true;
    } else if (response.statusCode == 422) {
      var jsonResponse = jsonDecode(response.body);
      messager = jsonResponse['message'];
      return false;
    } else {
      return false;
    }
  }

  // Future<bool> addNewUserData() async {
  //   EasyLoading.show(status: 'loading..', dismissOnTap: true);
  //   if (await registerAuth()) {
  //     EasyLoading.showSuccess('your account registered successfully');
  //     return true;
  //   } else {
  //     EasyLoading.showError('error here');
  //     return false;
  //   }



  }


