import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);
}
