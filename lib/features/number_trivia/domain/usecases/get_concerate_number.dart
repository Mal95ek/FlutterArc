import 'package:clean_architecture_tdd_course/core/error/failures.dart';
import 'package:clean_architecture_tdd_course/core/usecases/usecases.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entints/number_trivia.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/repositories/number_trivia_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetConcreateNumberTrivia implements Usecase <NumberTrivia , Params > {
  final NumberTriviaRepositories repositories;

  GetConcreateNumberTrivia(this.repositories);
  @override
  Future<Either<Failure , NumberTrivia>>call (Params params)
  async {
    return await  repositories.getConcreateNumberTrivia(params.number);
  }
}
class Params extends Equatable {

  final int number;

  Params({this.number});

  @override
  // TODO: implement props
  List<Object> get props => [Params(number: number)];



}