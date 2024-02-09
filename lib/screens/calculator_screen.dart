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

import 'package:calculator_app/utils/margin/y_margin.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  // State<CalculatorScreenState> createState() => _CalculatorScreenState();
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            YMargin(20),
            Text(
              '2000',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            const YMargin(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  buttonText: 'C',
                  buttonColor: Colors.grey,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: 'del',
                  buttonColor: Colors.grey,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '%',
                  buttonColor: Colors.grey,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '/',
                  buttonColor: Colors.orange,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
              ],
            ),
             const YMargin(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  buttonText: '7',
                  buttonColor: Colors.grey,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '8',
                  buttonColor: Colors.grey,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '9',
                  buttonColor: Colors.grey,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: 'x',
                  buttonColor: Colors.orange,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
              ],
            ),
             const YMargin(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  buttonText: '4',
                  buttonColor: Colors.grey,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '5',
                  buttonColor: Colors.grey,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '6',
                  buttonColor: Colors.grey,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '-',
                  buttonColor: Colors.orange,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// SafeArea -> Column -> [Text, Text, [Row -> [CustomButton]]]

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
  });
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.height * 0.08,
      height: size.height * 0.08,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: const CircleBorder(),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
