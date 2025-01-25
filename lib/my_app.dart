import 'package:bloc_intro/blocs/counter_bloc/counter_bloc.dart';
import 'package:bloc_intro/blocs/theme_bloc/theme_bloc.dart';
import 'package:bloc_intro/counter_page_bloc.dart';
import 'package:bloc_intro/counter_page_cubit.dart';
import 'package:bloc_intro/cubits/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CounterBloc()),
          BlocProvider(create: (context) => ThemeBloc()),
          BlocProvider(create: (context) => CounterCubit()),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
          final themeData = (state as ThemeSet).themeData;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: themeData,
            home: const CounterPageCubit(title: 'BLoC Introduction Sample'),
          );
        }));
  }
}
