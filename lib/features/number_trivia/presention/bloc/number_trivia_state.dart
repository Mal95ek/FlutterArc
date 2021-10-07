part of 'number_trivia_bloc.dart';
abstract class NumberTriviaState extends Equatable {

  List<Object> get props => [];
}

class NumberTriviaInitial extends NumberTriviaState {
  @override
  List<Object> get props => [];
}

class loading extends NumberTriviaState {
  @override
  List<Object> get props => [];
}
class loaded extends NumberTriviaState {
  final NumberTrivia trivia;

  loaded(this.trivia);


}
class Error extends NumberTriviaState {
  final String message;

  Error({required this.message});


}


