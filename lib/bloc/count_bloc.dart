import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'count_event.dart';
part 'count_state.dart';


class CountBloc extends Bloc<CountEvent, CountState> {
  CountBloc() : super(CountInitial()) {
    on<IncrementEvent>((event, emit) {
      // Update the count by emitting a new state
      emit(CountInitial(count: state.count + 1));
    });
  }
}
class CountState {
  get count => null;
 
}
