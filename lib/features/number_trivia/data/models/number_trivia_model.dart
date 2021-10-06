import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entints/number_trivia.dart';
class NumberTrivialModel extends NumberTrivia {
  NumberTrivialModel({String text, int number});
  factory NumberTrivialModel.fromJson(Map<String, dynamic> json) {
    return NumberTrivialModel(
        text: json['text'].toString(), number: (json['number'] as num).toInt());
  }
  Map<String, dynamic> toJson() {
    return {
      text: 'text',
      'number' : number
    };
  }
}