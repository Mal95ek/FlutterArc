import 'package:clean_architecture_tdd_course/core/error/failures.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entints/number_trivia.dart';
import 'package:dartz/dartz.dart';

abstract class Usecase<Type , Params> {
  Future <Either<Failure , NumberTrivia>> call(Params params);
}