import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterChanged(counter: 0)) {
    on<CounterEvent>((event, emit) {});

    on<IncrementCounter>((event, emit) {
      emit(CounterChanged(counter: state.counter + 1));
      print('Counter incremented to: ${state.counter}');
    });

    on<DecrementCounter>((event, emit) {
      emit(CounterChanged(counter: state.counter - 1));
    });

    on<ResetCounter>((event, emit) {
      emit(const CounterChanged(counter: 0));
    });
  }
}
