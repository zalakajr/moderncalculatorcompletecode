import 'package:math_expressions/math_expressions.dart';

// now lets create a class called Evaluator

class Evaluator {
  static String evaluateExpression(String expression) {
    try {
      // lets replace 'x' with '*'

      expression = expression.replaceAll('x', '*');
      // lets create an instance of parser

      Parser parser = Parser();
      // the parser will let us convert the string expression to a string object so that the library can evaluate

      Expression exp = parser.parse(expression);
      ContextModel contextModel = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, contextModel);
      return eval.toString();
    } catch (e) {
      // lets return an error here 

      return 'error';
    }
  }
}
