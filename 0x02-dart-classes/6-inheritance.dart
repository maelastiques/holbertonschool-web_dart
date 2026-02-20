import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;
  String? _user_password;
  
  User({
    this.id,
    this.name,
    this.age,
    this.height,
    String? user_password
  }) : super(password: user_password) {
    _user_password = user_password;
    super.password = user_password;
  }
  
  Map<String, dynamic> toJson() {
    return {
      'id': id ?? 0,
      'name': name ?? '',
      'age': age ?? 0,
      'height': height ?? 0.0
    };
  }
  
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password']
    );
  }
  
  @override
  String toString() {
    super.password = _user_password;
    bool isValidPassword = isValid();
    return 'User(id : ${id ?? 0} ,name: ${name ?? ''}, age: ${age ?? 0}, height: ${height ?? 0.0}, Password: $isValidPassword)';
  }
  
  String? get user_password {
    return _user_password;
  }
  
  set user_password(String? value) {
    _user_password = value;
    super.password = value;
  }
}

