import 'package:bloc_intro/blocs/theme_bloc/theme_bloc.dart';
import 'package:bloc_intro/cubits/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/counter_bloc/counter_bloc.dart';

class CounterPageCubit extends StatefulWidget {
  const CounterPageCubit({super.key, required this.title});
  final String title;

  @override
  State<CounterPageCubit> createState() => _CounterPageCubitState();
}

class _CounterPageCubitState extends State<CounterPageCubit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text("Cubit Counter Example"),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              context.read<ThemeBloc>().add(ThemeChanged());
            },
          ),
        ],
      ),
      body: BlocConsumer<CounterCubit, CounterStateCubit>(
        listener: (context, state) {
          if (state.counter == -10) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Counter reached NEGATIVE 10!')),
            );
          } else if (state.counter == 10) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Counter reached POSITIVE 10!')),
            );
          }
        },
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterCubit>().decrement();
                      },
                      child: const Icon(Icons.remove),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterCubit>().increment();
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
