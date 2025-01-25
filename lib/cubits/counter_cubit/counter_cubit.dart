import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state_cubit.dart';

class CounterCubit extends Cubit<CounterStateCubit> {
  CounterCubit() : super(const CounterInitial(counter: 0));

  void increment() {
    final currentCounter = (state as CounterStateCubit).counter;
    emit(CounterValueIncremented(counter: currentCounter + 1));
  }

  void decrement() {
    final currentCounter = (state as CounterStateCubit).counter;
    emit(CounterValueDecremented(counter: currentCounter - 1));
  }
}
