import 'package:bloc_intro/app_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeSet(themeData: lightTheme)) {
    on<ThemeChanged>((event, emit) {
      // Cast state to ThemeSet and check the current theme
      final currentTheme = (state as ThemeSet).themeData;

      // Toggle between light and dark themes
      if (currentTheme.brightness == Brightness.light) {
        emit(ThemeSet(themeData: darkTheme));
      } else {
        emit(ThemeSet(themeData: lightTheme));
      }
    });
  }
}
