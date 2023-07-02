part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent extends Equatable {
 @override
  List<Object?> get props => [];
}

class plusEvent extends CounterEvent{}
class minusEvent extends CounterEvent{}
