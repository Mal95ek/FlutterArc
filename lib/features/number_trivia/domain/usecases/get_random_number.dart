

import 'package:clean_architecture_tdd_course/core/error/failures.dart';
import 'package:clean_architecture_tdd_course/core/usecases/usecases.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entints/number_trivia.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/repositories/number_trivia_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRandomNumberTrivia implements Usecase<NumberTrivia ,NoParms> {
  final NumberTriviaRepositories repositories;

  GetRandomNumberTrivia(this.repositories);
  @override
  Future<Either<Failure, NumberTrivia>> call(NoParms params) async{


return await  repositories.getRandomNumberTrivia();
  }
}

