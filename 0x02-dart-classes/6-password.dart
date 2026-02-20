class Password {
  String? _password;
  
  Password({String? password}) : _password = password;
  
  String? get password {
    return _password;
  }
  
  set password(String? value) {
    _password = value;
  }
  
  bool isValid() {
    if (_password == null || _password!.length < 8 || _password!.length > 16) {
      return false;
    }
    
    bool hasUpperCase = false;
    bool hasLowerCase = false;
    bool hasNumber = false;
    
    for (int i = 0; i < _password!.length; i++) {
      String char = _password![i];
      if (char.codeUnitAt(0) >= 65 && char.codeUnitAt(0) <= 90) {
        hasUpperCase = true;
      }
      if (char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122) {
        hasLowerCase = true;
      }
      if (char.codeUnitAt(0) >= 48 && char.codeUnitAt(0) <= 57) {
        hasNumber = true;
      }
    }
    
    return hasUpperCase && hasLowerCase && hasNumber;
  }
  
  @override
  String toString() {
    return 'Your Password is: ${_password ?? ''}';
  }
}

