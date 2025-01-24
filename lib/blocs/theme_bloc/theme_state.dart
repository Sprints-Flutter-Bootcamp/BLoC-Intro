part of 'theme_bloc.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

class ThemeSet extends ThemeState {
  final ThemeData themeData;

  const ThemeSet({required this.themeData});

  @override
  List<Object> get props => [themeData];
}
