import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> user = json.decode(userData);
    return 'Hello ${user['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool credentials = await checkCredentials();
    print('There is a user: $credentials');
    if (credentials) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}

