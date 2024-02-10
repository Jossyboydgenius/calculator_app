import 'package:math_expressions/math_expressions.dart';

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
      if (expression.isEmpty) {
        return;
      }
      expression = expression.substring(0, expression.length - 1);
    } else if (buttonText == '=') {
      try {
        Parser parser = Parser();
        Expression exp = parser.parse(expression);
        ContextModel context = ContextModel();
        final evaluatedExpression = exp.evaluate(
          EvaluationType.REAL,
          context,
        );
        result =
            '${isInterger(evaluatedExpression) ? (evaluatedExpression as num).ceil() : '$evaluatedExpression'}';
        expression = result;
      } catch (e) {
        result = 'Error $e';
      }
    } else {
      expression += buttonText;
    }
  }

  // Creating a function that determines if a number is a interget or not
  bool isInterger(num value) => value is int || value == value.roundToDouble();
}
