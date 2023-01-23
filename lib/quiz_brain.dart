import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('Mitochondria is the power house of a cell.', true),
    Question('There are 206 bones in a human skell.', true),
    Question('There are 7 planets in our solar system.', false),
    Question('Hansika is very smart.', true),
    Question('50% of earth is water.', false),
    Question('JAVA is a \'POP\' language.', false),
    Question('A Stack follows LIFO.', true),
    Question('A Queue follows FIFO', true),
    Question('Array is a Primitive DataType.', false),
    Question('Boolean datatype helps in storing alphanumeric values.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}