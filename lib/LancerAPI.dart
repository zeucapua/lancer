///--- JSON ---
import 'dart:async'; import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';

///--- OBJECTS ---
import 'models/UserModels.dart';

//static methods used repeatedly in multiple pages
class LancerAPI {

  ///--- STATIC VARIABLES ---
  static const String LANCER_API_URL = 'https://freelancer.alexparra.me/scripts/';
  static const String LANCER_API_NEW_USER = 'newUser.php';
  static const String LANCER_API_USER_LIST = 'getUsers.php';
  static const String LANCER_API_FREELANCER = 'getFreelancer.php';
  static const String LANCER_API_VERIFY_LOGIN = 'loginVerification.php';

  // TODO: FIX METHODS TO /NOT/ RETURN NULL


  // GET uID of User if it exists and is correct
  static Future<dynamic> getUserId(String username, String password) async {

    String url = LANCER_API_URL + LANCER_API_VERIFY_LOGIN;

    var toPost = { 'Username': username, 'Password': password };

    var response;

    http.post(url, body: toPost).then((val) => response = val );

    return response;
  }

  // GET a list of Users
  static Future<List<User>> getUserList(int areFreelancers) async {

    String url = LANCER_API_URL + LANCER_API_USER_LIST;

    var headers = areFreelancers == 1 ?
        { 'Accept': 'application/json', 'isFreelancer': 1 } :
        { 'Accept': 'application/json' };

    var response = await http.get(
      Uri.encodeFull(url),
      headers: headers
    );

    return json.decode(response.body);

  }

  // GET a User based on 'User ID'
  static Future<User> getUser(String userId) async {

    String url = LANCER_API_URL + LANCER_API_FREELANCER;

    var response = await http.get(
      Uri.parse(url),
      headers: { 'Accept': 'application/json' }
    );


    return new User.fromJson(json.decode(response.body));
  }

  // POST a new User
  static Future<String> postUser(User user) async {

    String url = LANCER_API_URL + LANCER_API_NEW_USER;

    var toPost = user.toJson();

    var response = await http.post(
      Uri.encodeFull(url),
      body: toPost
    );

    return json.decode(response.body)['passed'];

  }

}