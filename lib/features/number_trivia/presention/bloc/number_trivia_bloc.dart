import 'dart:async';
import 'package:arc_flutter1/core/util/input_converter.dart';
import 'package:arc_flutter1/features/number_trivia/domain/entints/number_trivia.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'number_trivia_event.dart';
part 'number_trivia_state.dart';
class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  NumberTriviaState get initialState => NumberTriviaInitial();
  final GetTriviaForConcerateNumber getTriviaForConcerateNumber;
  final GetTriviaForRandomNumber getTriviaForRandomNumber;
  final InputConverter inputConverter;

  NumberTriviaBloc(
      {required this.getTriviaForConcerateNumber, required this.getTriviaForRandomNumber, required this.inputConverter});

  @override
  Stream<NumberTriviaState> mapEventToState(NumberTriviaEvent event) async* {
    if (event is GetTriviaForConcerateNumber) {
      final inputEither = inputConverter.stringToUnsaignedInteger(
          event.numberString);
      yield Error(message: 'Invalid Input');
      inputEither!.fold((failere) async*
      {
        yield Error(message: 'invialad input');
      }, (integer)  {

      });
    }
  }
}