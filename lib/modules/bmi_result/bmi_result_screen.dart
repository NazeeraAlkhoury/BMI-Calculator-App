import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;

  BmiResultScreen({
    required this.isMale,
    required this.result,
    required this.age,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_left),
        ),
        title: Text('BmiResult'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender: ${isMale ? 'Male' : 'Fmale'}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Result: ${result.round()}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Age: $age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
