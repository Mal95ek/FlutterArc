import 'package:clean_architecture_tdd_course/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
abstract class NumberTriviaLocalDataSource {
  Future<NumberTrivialModel> getLastNumberTrivia();
  Future<void>cashNumberTrivia(NumberTrivialModel triviatocatch);
} 


class NumberTriviaLocalDataSourceIml implements NumberTriviaLocalDataSource {
  final SharedPreferences sharedPreferences;

  NumberTriviaLocalDataSourceIml(this.sharedPreferences);

  @override
  Future<void> cashNumberTrivia(NumberTrivialModel triviatocatch) {
    // TODO: implement cashNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<NumberTrivialModel> getLastNumberTrivia() {
    // TODO: implement getLastNumberTrivia
    throw UnimplementedError();
  }
  
  
}