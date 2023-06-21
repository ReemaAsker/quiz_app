import 'package:quiz_app_final/question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBrain {
  int questionNum = 0;

  final List<Question> _question_bank = [
    Question(
      text: 'You can lead a cow down stairs but not up stairs.',
      answer: false,
    ),
    Question(
        text: 'Approximately one quarter of human bones are in the feet.',
        answer: true),
    Question(
      text: 'A slug\'s blood is green.',
      answer: true,
    ),
  ];
  String getText() {
    return _question_bank[questionNum].text;
  }

  bool getAns() {
    return _question_bank[questionNum].answer;
  }

  void nextQu() {
    if (questionNum < _question_bank.length - 1) {
      questionNum = questionNum + 1;
    } else if (questionNum == _question_bank.length) {
      // Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.")
      //     .show();

      print('finish');
    }
  }

  // bool is_finish() {
  //   if (questionNum == _question_bank.length - 1) {
  //     return true;
  //   }
  // }
}
