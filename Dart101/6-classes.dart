/*: * Classes
 Full support for OOP, we will use it a lot in Flutter
 There are no visibility modifiers; private properties start with _
*/
import 'dart:core';

class Person {
  // property
  int id = 0;
  // function - method
  show() {
    print("Person id: ${this.id}");
  }
}

// new keyword is optional!
final p = Person();
final q = new Person();

// let's talk about constructors
// there is a Primary constructor, secondary constructors and a initializer block
// The primary constructor is defined in the class name definition

class Request {
  int id = 0;
  String url = "";

  Request(int id, String url) {
    this.id = id;
    this.url = url;
  }

  // named constructores

  Request.fromData(this.id, this.url);
}

class HttpRequest extends Request {
  HttpRequest(int id, String url) : super(id, url);
}

// We can also use named parameters

class Car {
  int id;
  String name;

  Car({required this.id, required this.name});
}
