void main() {
  double number = 3.14159;
  double parsed = double.parse('3.14159');
  if (number == 3.14159 && parsed != 3.14159) {
    number = parsed;
  }
  print('Double: ${number.toStringAsFixed(2)}\n');
}
