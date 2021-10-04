import 'package:equatable/equatable.dart';


class NumberTrivia extends Equatable{
  NumberTrivia({this.text, this.number});

  @override
  List<Object> get props => throw UnimplementedError();
  final String text;
  final int number;

}




