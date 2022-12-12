import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF453C67),
        body: QuestionPage(),
      ),
    );
  }
}

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {



  List<String> questions = [
    "Are you a Girl",
    "Are you 18+",
    "Are you a Computer Expert"
  ];

  List<bool> answer = [false, true, true];

  int correctCount = 0;
  int questionNum = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Center(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Correct $correctCount",
                        style:
                            const TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Card(
                        color: Color(0xFF6D67E4),
                        child: ListTile(
                          title: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              questions[questionNum],
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (answer[questionNum] == true) {
                        correctCount++;
                      }
                      setState(() {
                        questionNum++;
                      });
                    },
                    child: Container(
                      color: Color(0xFF10A19D),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: Icon(
                          Icons.check,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    onTap: () {
                      if (answer[questionNum] == false) {
                        correctCount++;
                      }
                      setState(() {
                        questionNum++;
                      });
                    },
                    child: Container(
                      color: Color(0xFFFB2576),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: Icon(
                          Icons.close,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
