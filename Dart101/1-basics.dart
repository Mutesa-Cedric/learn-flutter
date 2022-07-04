/*: * Basic Expressions
 Dart code looks in its first view as many other languages
*/

// We can have global expressions without the need of a function or class.
// However, if you are targeting Android, you will always need a class
// (Java VM requirement)
// Semi-colons are optional, not recommended unless two expressions share a line
// We use (mandatory) curly braces for code blocks following C-syntax.
// Spaces and new lines are, most of the time, ignored
var x = 1;
var y = 2;

playingWithDart() {
  // Boolean conditions need parenthesis
  if ((x > 1) && (y < 2)) {}
  while (x < 10) {
    x++;
  }
  print(x); // println sends a message to the console with a new line after
}

/*: ** Name style guidelines */

playingWithNames() {
  // Variable, function and package names use camelCase
  String name;
  const tax = 7.8;
  void printMessage() {}
}

// Everything is public in the package, unless it's prefixed with _
class X {
  String publicProperty = "";
  String _privateProperty = "";
}

// Data types such as classes use TitleCase.
// TitleClase also applies to Singleton variables and Objects!!
class CustomerOrder {}

// Loops: standard while, for and for-in
playingWithLoops() {
  for (var i = 0; i < 10; i++) {}
  for (var i in [1, 2, 3]) {
    print(i);
  }
  while (true) {}
}
