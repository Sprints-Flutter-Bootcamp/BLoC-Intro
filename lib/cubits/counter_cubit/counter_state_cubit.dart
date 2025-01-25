part of 'counter_cubit.dart';

sealed class CounterStateCubit extends Equatable {
  final int counter;
  const CounterStateCubit({required this.counter});

  @override
  List<Object> get props => [counter];
}

class CounterInitial extends CounterStateCubit {
  const CounterInitial({required int counter}) : super(counter: counter);
}

class CounterValueIncremented extends CounterStateCubit {
  const CounterValueIncremented({required int counter})
      : super(counter: counter);
}

class CounterValueDecremented extends CounterStateCubit {
  const CounterValueDecremented({required int counter})
      : super(counter: counter);
}
