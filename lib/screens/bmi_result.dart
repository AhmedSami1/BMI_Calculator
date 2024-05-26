import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {


  late final double height;
  late final bool isMale;
  late final int age;
  late final int weight;
  late final double result;

   BMIResultScreen({super.key,
    required this.height,
    required this.isMale,
    required this.age,
    required this.weight,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
            'BMI RESULT',
            style: TextStyle(
              color: Colors.white,
            )
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
              'Gender : ${isMale ? 'Male ' : 'Female'}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
            Text(
              'Result : ${result.round()}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
            Text(
              'Age : $age',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
