
import 'package:clean_architecture_tdd_course/core/error/excepation.dart';
import 'package:clean_architecture_tdd_course/core/error/failures.dart';
import 'package:clean_architecture_tdd_course/core/network/network_info.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/data/datasources/number_trivie_local__data.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entints/number_trivia.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/repositories/number_trivia_repositories.dart';
import 'package:dartz/dartz.dart';
typedef Future <NumberTrivia> _ConcreateRandomChooser();
class NumberTriviaRepositoriesIml implements NumberTriviaRepositories {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;
  NumberTriviaRepositoriesIml(
      {this.remoteDataSource, this.localDataSource, this.networkInfo});
  @override
  Future<Either<Failure, NumberTrivia>> getConcreateNumberTrivia(int number) async {

    return await _getTrivia((){
      return remoteDataSource.getConcreateNumberTrivia(number);
    });
  }
  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() async {
    return await _getTrivia((){
      return remoteDataSource.getRandomNumberTrivia() ;
    });

  }
  Future<Either<Failure, NumberTrivia>> _getTrivia (_ConcreateRandomChooser getConcerateOrRandom)async {

    if (await networkInfo.isConnected) {
      try {
        final remoatetrivie = await getConcerateOrRandom(); localDataSource.cashNumberTrivia(remoatetrivie);
        return Right(remoatetrivie);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final loacltrive = await localDataSource.getLastNumberTrivia();
        return Right(loacltrive);
      } on CacheException {
        return Left(CasheFailure());
      }
    }
  }

}




