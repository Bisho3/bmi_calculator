import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  const BmiResult({
    Key? key,
    required this.result,
    required this.isMale,
    required this.age,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_left,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender: ${isMale ? 'Male' : 'Female'}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            Text(
              'Result: $result',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            Text(
              'Age: $age',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
