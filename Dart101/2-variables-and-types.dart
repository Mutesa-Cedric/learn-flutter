/*: * Variables and Types
 Dart is a statically typed language, but it's also flexible and support type inference
 with `var`, `const` and the `dynamic type`.
 On the web platform, types may not be 100% inforced in runtime.

 In Dart every value you apply in a variable is an object, with the exception of null
*/

// Mutable Variables use the keyword `var` or the type declaration as a prefix
int data = 3;
var otherData = 5;

// Immutable Variables use the keyword `final`
// We can set final variables' content in runtime
final notMutableObject = "final string";
final int otherImmutable = 5;

// Constants use `const` and we will use them a lot in Flutter
// We must set const content at compile time
const pi = 3.14;

playingWithTypes() {
  // Core Data Types
  String stringValue;
  int integerValue;
  double doubleValue;
  bool booleanValue; // values are true and false
  dynamic anything;
  num aNumber;

  // String Literals, double quotes or single quotes
  print("Hello World");
  // Multi-line literal strings
  var multiline = """
      sdfsdf
  """;

  var price = 3;
  var otherPrice = 5.2;

  // Every string can have template expressions using $ or ${}
  // expression result will be converted to string
  var message = "The $price price is ${otherPrice * 1.1}";
}
