// count_event.dart

part of 'count_bloc.dart';

@immutable
sealed class CountEvent {
  const CountEvent();
}

class IncrementEvent extends CountEvent {}
