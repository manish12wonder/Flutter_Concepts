class User {
  final String name;
  final int age;

  User({
    required this.name,
    required this.age
  });

  @override
  String toString() {
    return 'User(name: $name, age: $age)';
  }
}
void main() {
  User user = User(name: 'Subah', age: 25);
  print(user); // Output: User(name: Subah, age: 25)
}