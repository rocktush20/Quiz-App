// ignore_for_file: unnecessary_this, curly_braces_in_flow_control_structures, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, camel_case_types, unused_local_variable, non_constant_identifier_names, prefer_const_constructors_in_immutables, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'QuestionClass.dart';
import 'QuizClass.dart';
import 'OptionBox.dart';
import 'SubjectiveUI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Quiz quiz = Quiz();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Score: ${quiz.currentScore}/${quiz.attemptedQuestions}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      child: Text(
                        quiz.questions[quiz.index].question,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                ),
                if (quiz.questions[quiz.index].type == "MCQ")
                  Row(
                    children: [
                      optionBox(
                          quiz: quiz,
                          optionId: "A",
                          parentRebuild: () {
                            setState(() {});
                          },
                          option: quiz.questions[quiz.index].options![0]),
                      SizedBox(
                        width: 10,
                      ),
                      optionBox(
                          quiz: quiz,
                          optionId: "B",
                          parentRebuild: () {
                            setState(() {});
                          },
                          option: quiz.questions[quiz.index].options![1]),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                SizedBox(
                  height: 10,
                ),
                if (quiz.questions[quiz.index].type == "MCQ")
                  Row(
                    children: [
                      optionBox(
                          quiz: quiz,
                          optionId: "C",
                          parentRebuild: () {
                            setState(() {});
                          },
                          option: quiz.questions[quiz.index].options![2]),
                      SizedBox(
                        width: 10,
                      ),
                      optionBox(
                          quiz: quiz,
                          optionId: "D",
                          parentRebuild: () {
                            setState(() {});
                          },
                          option: quiz.questions[quiz.index].options![3]),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                if (quiz.questions[quiz.index].type == "Subjective")
                  SubjectiveUI(
                    quiz: quiz,
                    parentRebuild: () {
                      setState(() {});
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
