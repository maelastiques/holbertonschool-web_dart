class Password {
  String password = '';
  
  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }
    
    bool hasUpperCase = false;
    bool hasLowerCase = false;
    bool hasNumber = false;
    
    for (int i = 0; i < password.length; i++) {
      String char = password[i];
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
    return 'Your Password is: $password';
  }
}

