import 'package:bloc_intro/blocs/theme_bloc/theme_bloc.dart';
import 'package:bloc_intro/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ThemeBloc(),
      child: const MyApp(),
    ),
  );
}
