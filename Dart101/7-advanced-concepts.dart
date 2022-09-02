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
