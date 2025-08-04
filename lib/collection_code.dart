void main() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  print(fruits[2]); // Accessing the third element, which is 'Cherry'
  fruits.add('Date'); // Adding a new element to the list
  print(fruits); // Output: [Apple, Banana, Cherry, Date]

  Set<int> numbers = {1, 2, 3, 3};
  print(numbers); // {1, 2, 3}
  numbers.add(4); // Adding a new number
  print(numbers); // Output: {1, 2, 3, 4}

  Map<String, String> capitals = { //MAP-> key-value pairs
    'India': 'New Delhi',
    'Japan': 'Tokyo',
  };
  print(capitals['India']); // New Delhi
  capitals['USA'] = 'Washington D.C.';
  print(capitals); // {India: New Delhi, Japan: Tokyo, USA: Washington D.C.}

  //loops
  for(var fruit in fruits) {
    print(fruit);
  }
  capitals.forEach((country, capital) {
    print('$country: $capital');
  });
}