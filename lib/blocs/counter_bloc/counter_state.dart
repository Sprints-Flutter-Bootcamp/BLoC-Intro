part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  final int counter;
  const CounterState({required this.counter});

  @override
  List<Object> get props => [counter];
}

class CounterChanged extends CounterState {
  const CounterChanged({required super.counter});
}
