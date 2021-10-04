
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entints/number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:clean_architecture_tdd_course/core/error/failures.dart';

abstract class NumberTriviaRepositories {
Future<Either<Failure,NumberTrivia>>getConcreateNumberTrivia(int number);
Future <Either<Failure , NumberTrivia>> getRandomNumberTrivia();
}