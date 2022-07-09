// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

import 'QuizClass.dart';

class SubjectiveUI extends StatelessWidget {
  final void Function() parentRebuild;
  final Quiz quiz;
  SubjectiveUI({Key? key, required this.quiz, required this.parentRebuild}) : super(key: key);

TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  controller: controller,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                  height: 40,
                  width: 110,
                  child: ElevatedButton(
                      onPressed: () {
                        quiz.registerAttempt(controller.text.toString());
                        parentRebuild();
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(fontSize: 17),
                      ))),
            ),
          ],
        )
      ],
    );
  }
}