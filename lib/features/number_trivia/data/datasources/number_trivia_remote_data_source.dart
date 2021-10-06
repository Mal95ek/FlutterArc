import 'dart:convert';

import 'package:clean_architecture_tdd_course/core/error/excepation.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:http/http.dart' as http;
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entints/number_trivia.dart';
abstract class NumberTriviaRemoteDataSource {
  Future<NumberTrivia> getConcreateNumberTrivia(int number);
  Future<NumberTrivia> getRandomNumberTrivia();
}
class NumberTriviaRemoteDataSourceIml implements NumberTriviaRemoteDataSource {
final http.Client client;

  NumberTriviaRemoteDataSourceIml(this.client);
  @override
  Future<NumberTrivia> getConcreateNumberTrivia(int number) {

    _getTriviaFromUrl('http://numbersapi.com/$number');
  }

  @override
  Future<NumberTrivia> getRandomNumberTrivia() {
    _getTriviaFromUrl('http://numbersapi.com/random');
  }

Future<NumberTrivialModel> _getTriviaFromUrl(String url) async {
  final response = await client.get(
    url,
    headers: {'Content-Type': 'application/json'},
  );

  if (response.statusCode == 200) {
    return NumberTrivialModel.fromJson(json.decode(response.body));
  } else {
    throw ServerException('error message');

  }
}

}