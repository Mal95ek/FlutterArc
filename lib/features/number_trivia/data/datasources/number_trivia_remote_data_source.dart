
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entints/number_trivia.dart';
abstract class NumberTriviaRemoteDataSource {
  Future<NumberTrivia> getConcreateNumberTrivia(int number);
  Future<NumberTrivia> getRandomNumberTrivia();
}