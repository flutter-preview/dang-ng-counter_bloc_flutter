import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.intial()) {
    on<plusEvent>((event, emit) {
      emit(state.copyWith(counter: state.counter + 1));
    },);
    on<minusEvent>(
      (event, emit) {
        emit(state.copyWith(counter: state.counter - 1));
      },
    );
  }
}
