import 'Questions.dart';

class Brain {

  int questionNum = 0;
  int score = 0;

  final List<Question> _question = [
    Question("You are a Girl?",false),
    Question("Yuo like watching netflix?",false),
    Question("You are a Computer Expert?",true),
    Question("You are 18+",true),
    Question("You are a gamer",true),
  ];



  String getQuestion(){
    return '${_question[questionNum].questionText}';
  }

  bool? getAnswer(){
    return _question[questionNum].correctAnswer;
  }

  void nextQuestion(){
    if (questionNum < _question.length - 1){
      questionNum++;
    }
  }

  bool isFinished(){
    return questionNum >= _question.length - 1;
  }

  void reset(){
    questionNum = 0;
    score = 0;
  }

  int getScore(){
    return score;
  }

  void increaseScore(){
    score++;
  }
}

