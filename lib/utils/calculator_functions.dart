import 'dart:ffi';

class CalculatorFunctions {
  // Defining the expression and the result variable
  String expression = '';
  String result = '';
  // Creating a function that helps in handling whatever button is clicked and also evaluate the expression
  Void performButtonAction (String buttonText) {}
  // Creating a function that determines if a number is a interget or not
  bool isInterger(num value) => value is int || value == value.roundToDouble();
}
