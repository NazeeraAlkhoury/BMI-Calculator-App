import 'package:flutter/material.dart';
import 'package:flutter_application_2/modules/bmi_calculater/bmi_calculater.dart';
import 'package:flutter_application_2/shared/bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculater(),
    );
  }
}
