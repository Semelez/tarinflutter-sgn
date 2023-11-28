part of 'count_bloc.dart';



 class CountInitial extends CountState {

    final int count;
  CountInitial({
     this.count = 0,
  });
CountInitial copyWith({int? count}) {
    return CountInitial(
      count: count ?? this.count,
    );
  }
  List<Object?> get props => [count];
  
}
