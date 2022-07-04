/*: * Functions
 */

import 'dart:core';

aFunction() {
  print("I'm a function");
}

void explicitVoidReturnType() {
  print("I'm also a function");
}

String aFunctionReturning() {
  return "I'm a function";
}

// Arguments
int sum(int a, int b) {
  return a + b;
}

// Named Arguments (all of them or partial)
int sum2({int? a, int? b}) {
  if (a != null && b != null) {
    return a + b;
  } else {
    return 0;
  }
}

int sum3(int a, {required int? b}) {
  return a + b!;
}

// How do you call sum?
playingWithCalls() {
  sum(4, 1);
  // call with named parameters
  sum2(b: 5, a: 10);
  sum3(3, b: 4);
}

/*: * Lambda or anonymous functions, Type is Function
   if no return is expected, we use void
 */
Function myFunction = (int number, bool isReady) {};

// Arrow functions are also possible if they have only one sentence

Function myArrow = (int a, int b) => a + b;
