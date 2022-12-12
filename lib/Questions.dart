import 'package:flutter/cupertino.dart';

class Question{
  String? questionText;
  bool? correctAnswer;

  Question({String? q, bool? a}){
    q = questionText;
    a = correctAnswer;
  }

}