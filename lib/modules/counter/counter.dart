import 'package:flutter/material.dart';
import 'package:flutter_application_2/modules/counter/cubit/cubit.dart';
import 'package:flutter_application_2/modules/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//int counter = 1;

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => CounterCubit(),
        child: BlocConsumer<CounterCubit, CounterStates>(
          listener: (context, state) {
            if (state is CounterMinusState) {
              //print('the stete is MinusState ${state.counter}');
            }
            if (state is CounterPlusState) {
              // print('the stete is PlusState ${state.counter}');
            }
          },
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  'Counter',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              body: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        // setState(() {
                        CounterCubit.get(context).minus();
                        print('${CounterCubit.get(context).counter}');
                        // });
                      },
                      child: Text(
                        '-',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ' ${CounterCubit.get(context).counter}',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // setState(() {
                        CounterCubit.get(context).plus();
                        print('${CounterCubit.get(context).counter}');
                        // });
                      },
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        )
        //

        );
  }
}
