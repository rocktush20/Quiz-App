// ignore_for_file: sort_child_properties_last, prefer_const_constructors, camel_case_types, unused_local_variable, file_names

import 'package:flutter/material.dart';
import 'QuizClass.dart';

class optionBox extends StatelessWidget {
  const optionBox({
    Key? key,
    required this.quiz,
    required this.optionId,
    required this.parentRebuild,
    required this.option,
  }) : super(key: key);

  final void Function() parentRebuild;
  final Quiz quiz;
  final String optionId, option;
  @override
  Widget build(BuildContext context) {
    var question = quiz.questions[quiz.index];
    return Expanded(
      child: GestureDetector(
        onTap: () {
          quiz.registerAttempt(optionId);
          parentRebuild();
        },
        child: Container(
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "$optionId. $option",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
