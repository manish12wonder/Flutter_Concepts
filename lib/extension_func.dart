extension CapitalizeString on String {
  String toCapitalized() {
    if(isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }
}
extension IntCheck on int {
  bool isEven() => this % 2 == 0;
}
extension PhoneValidation on String {
  bool isValidPhoneNumber() => length == 10 && int.tryParse(this) != null;
}
void main() {
  String text = "subah";
  print(text.toCapitalized());
  print(4.isEven);
  print(5.isEven);

  String phone = "9876543210";
  print(phone.isValidPhoneNumber()); // true

  String invalid = "98a6543210";
  print(invalid.isValidPhoneNumber()); // false
}