/*: * Null Safety
 Null Safety is optional in the language and it was added later
 It's automatically enabled in current Flutter projects
 A String must have a string value, but a String? accepts null
*/
// String myName;        // What's the value? Null? IMPOSSIBLE

late String myName; // We express we will have a value later, before using it

String? myLastname; // It can handle a null value

// Null operators
// **************
// print(myLastname.length);   // it doesn't work!

// null manual override
final lengthForSure = myLastname!.length;

// Safe calls
var length = myLastname?.length;
