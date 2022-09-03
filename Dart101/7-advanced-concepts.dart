// 1.extensions
// this is a way of adding functionalities or properties to an existing class

class Person {
  String firstName;
  String lastName;
  int age;

  Person(this.age, this.firstName, this.lastName);
}

extension PersonExtension on Person {
  String get fullName => "$firstName $lastName";
}

void testExtension() {
  var mutesa = new Person(17, "mutesa", "cedric");
  print(mutesa.fullName);
}

// 2.futures

// syncronous operation
int multiplyByTwo(int a) => a * 2;

// using futures

Future<int> futureMultiplyByTwo(int a) {
  return Future.delayed(Duration(seconds: 2), () => a * 2);
}

//3.async/await
// mechanism for controlling asyncronous operations

void test2() async {
  int myNum = await futureMultiplyByTwo(2);
  print(myNum);
}

// 4.streams
// asyncronous pipe of data

Stream<String> getName() {
  return Stream.value("foo");
}
// this stream above just produces a single value. this is not the main usage of
// streams

// periodic streams

Stream<String> getTime() {
  DateTime now = DateTime.now();
  // this will update time after every one second
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return now.add(Duration(seconds: value)).toString();
  });
}

void testStream() async {
  await for (final value in getTime()) {
    print(value);
  }
}

// 5.generators
// way for generating iterables marked with syn* and async*

// 5.a sync iterables
// it calculates list of thing synchronously

Iterable<int> getOneTwoThree() sync* {
  yield 1;
  yield 2;
  yield 3;
}

void testIterable() {
  // printing values of an iterable with loop.
  for (int value in getOneTwoThree()) {
    print(value);
  }

  // you can also print values of an iterable directly
  print(getOneTwoThree());
}

// 6.generics
// generics helps you to avoid repetition
// ex:

class Pair {
  final String value1;
  final String value2;

  Pair(this.value1, this.value2);

  Iterable<String> get getPair {
    return [value1, value2];
  }
}

// what if we needed to use a different data type go generate a pair?
// without using generics, we can make class for each data type. !this is not efficient

// with generics

class GenericPair<A, B> {
  final A value1;
  final B value2;

  GenericPair(this.value1, this.value2);

  Iterable<dynamic> get getPair {
    return [value1, value2];
  }
}

void testGenerics() {
  // the type of members of that class can be assigned dynamically
  final genericPair1 = GenericPair(1, "mutesa");
  final genericPair2 = GenericPair("test", [1, 2, 3]);

  print(genericPair1.getPair);
  print(genericPair2.getPair);
}

void main() {
  testGenerics();
}
