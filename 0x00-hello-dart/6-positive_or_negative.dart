void main(List<String> args) {
  String number = args[0];
  int num = int.parse(number);
  if (num > 0) {
    print('$num is positive');
  } else if (num == 0) {
    print('$num is zero');
  } else {
    print('$num is negative');
  }
}

