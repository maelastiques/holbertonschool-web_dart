void outer(String name, String id) {
  String inner() {
    List<String> nameParts = name.split(' ');
    String firstWord = nameParts[0];
    String secondWord = nameParts[1];
    String firstLetter = secondWord[0];
    return 'Hello Agent $firstLetter.$firstWord your id is $id';
  }
  print(inner());
}

