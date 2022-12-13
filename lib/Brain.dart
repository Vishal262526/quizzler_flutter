import 'Questions.dart';

class Brain {
  final List<Question> _question = [
    Question("You are a Girl?",false),
    Question("Yuo like watching netflix?",false),
    Question("You are a Computer Expert?",true),
    Question("You are 18+",true),
    Question("You are a gamer",true),
  ];

  String getQuestion(int index){
    return '${_question[index].questionText}';
  }

  bool? getAnswer(int index){
    return _question[index].correctAnswer;
  }
}

