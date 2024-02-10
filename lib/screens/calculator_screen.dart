// import 'package:flutter/material.dart';

// class CalculatorScreen extends StatefulWidget {
//   const CalculatorScreen({
//     super.key,
//   });

//   @override
//   State<CalculatorScreen> createState() => _CalculatorScreenState();
// }

// class _CalculatorScreenState extends State<CalculatorScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Text(
//               'Calculator app test',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 30,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// // SafeArea -> Column -> [Text, Text, [Row -> [CustomButton]]]

import 'package:calculator_app/utils/calculator_functions.dart';
import 'package:calculator_app/utils/margin/y_margin.dart';
import 'package:flutter/material.dart';
import '../Widgets/custom_button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  // State<CalculatorScreenState> createState() => _CalculatorScreenState();
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final CalculatorFunctions calculatorFunctions = CalculatorFunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                calculatorFunctions.expression,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              YMargin(20),
              Text(
                calculatorFunctions.result,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              const YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: 'C',
                    buttonColor: Colors.grey,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('8');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '⌫',
                    buttonColor: Colors.grey,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('8');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '%',
                    buttonColor: Colors.grey,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('8');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '÷',
                    buttonColor: Colors.orange,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('8');
                      });
                      },
                    textColor: Colors.white,
                  ),
                ],
              ),
              const YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '7',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('7');
                      });
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '8',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('8');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '9',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('9');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: 'x',
                    buttonColor: Colors.orange,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('x');
                      });
                      },
                    textColor: Colors.white,
                  ),
                ],
              ),
              const YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '4',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('4');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '5',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('5');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '6',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('6');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '−',
                    buttonColor: Colors.orange,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('8');
                      });
                      },
                    textColor: Colors.white,
                  ),
                ],
              ),
              const YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '1',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('1');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '2',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('2');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '3',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('3');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '+',
                    buttonColor: Colors.orange,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('+');
                      });
                      },
                    textColor: Colors.white,
                  ),
                ],
              ),
              const YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '0',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('0');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '.',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('.');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '00',
                    buttonColor: Colors.white12,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('00');
                      });
                      },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '=',
                    buttonColor: Colors.orange,
                    onPressed: () {
                      setState(() {
                      calculatorFunctions.performButtonAction('=');
                      });
                      },
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// SafeArea -> Column -> [Text, Text, [Row -> [CustomButton]]]
