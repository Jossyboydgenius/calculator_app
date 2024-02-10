import 'dart:ffi';

class CalculatorFunctions {
  // Defining the expression and the result variable
  String expression = '';
  String result = '';
  // Creating a function that helps in handling whatever button is clicked and also evaluate the expression
  void performButtonAction(String buttonText) {
    if (buttonText == 'C') {
      expression = '';
      result = '';
    } else if (buttonText == '⌫') {
      expression = expression.substring(0, expression.length - 1);
    } else if (buttonText == '=') {
    } else {
      expression += buttonText;
    }
  }

  // Creating a function that determines if a number is a interget or not
  bool isInterger(num value) => value is int || value == value.roundToDouble();
}
