part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CountercubitstateFilled extends CounterState {
  final int value;

  CountercubitstateFilled(this.value);
}
