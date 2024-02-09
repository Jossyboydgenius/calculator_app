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
            Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            Text(
              '2000',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            Row(
              children: [
                CustomButton(
                  buttonText: 'C',
                  buttonColor: Colors.white12,
                  onPressed:() {},
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
