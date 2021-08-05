class Quiz {
  final String topic;
  final List<Question> questions;

  Quiz({
    this.questions,
    this.topic,
  });
}

class Question {
  final String question;
  final List<Option> options;
  final String solution;
  bool isLocked;
  Option selectedOption;

  Question({
    this.question,
    this.options,
    this.solution,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String code;
  final String answer;
  final bool isCorrect;

  const Option({
    this.answer,
    this.code,
    this.isCorrect,
  });
}

final questions = [
  Question(
    question: 'Which planet is the hottest in the solar system?',
    options: [
      Option(code: 'A.', answer: 'Earth', isCorrect: false),
      Option(code: 'B.', answer: 'Venus', isCorrect: true),
      Option(code: 'C.', answer: 'Jupiter', isCorrect: false),
      Option(code: 'D.', answer: 'Saturn', isCorrect: false),
    ],
    solution: 'Venus is the hottest planet in the solar system',
  ),
  Question(
    question: 'How many molecules of oxygen does ozone have?',
    options: [
      Option(code: 'A.', answer: '1', isCorrect: false),
      Option(code: 'B.', answer: '2', isCorrect: false),
      Option(code: 'C.', answer: '5', isCorrect: false),
      Option(code: 'D.', answer: '3', isCorrect: true),
    ],
    solution: 'Ozone have 3 molecules of oxygen',
  ),
  Question(
    question: 'What is the symbol for potassium?',
    options: [
      Option(code: 'A.', answer: 'N', isCorrect: false),
      Option(code: 'B.', answer: 'S', isCorrect: false),
      Option(code: 'C.', answer: 'P', isCorrect: false),
      Option(code: 'D.', answer: 'K', isCorrect: true),
    ],
    solution: 'The symbol for potassium is K',
  ),
  Question(
    question:
        'Which of these plays was famously first performed posthumously after the playwright committed suicide?',
    options: [
      Option(code: 'A.', answer: '4.48 Psychosis', isCorrect: true),
      Option(code: 'B.', answer: 'Hamilton', isCorrect: false),
      Option(code: 'C.', answer: "Much Ado About Nothing", isCorrect: false),
      Option(code: 'D.', answer: "The Birthday Party", isCorrect: false),
    ],
    solution: '4.48 Psychosis is the correct answer for this question',
  ),
  Question(
    question: 'What year was the very first model of the iPhone released?',
    options: [
      Option(code: 'A.', answer: '2005', isCorrect: false),
      Option(code: 'B.', answer: '2008', isCorrect: false),
      Option(code: 'C.', answer: '2007', isCorrect: true),
      Option(code: 'D.', answer: '2006', isCorrect: false),
    ],
    solution: 'iPhone was first released in 2007',
  ),
  Question(
    question: ' Which element is said to keep bones strong?',
    options: [
      Option(code: 'A.', answer: 'Carbon', isCorrect: false),
      Option(code: 'B.', answer: 'Oxygen', isCorrect: false),
      Option(code: 'C.', answer: 'Calcium', isCorrect: true),
      Option(
        code: 'D.',
        answer: 'Pottasium',
        isCorrect: false,
      ),
    ],
    solution: 'Calcium is the element responsible for keeping the bones strong',
  ),
  Question(
    question: 'What country won the very first FIFA World Cup in 1930?',
    options: [
      Option(code: 'A.', answer: 'Brazil', isCorrect: false),
      Option(code: 'B.', answer: 'Germany', isCorrect: false),
      Option(code: 'C.', answer: 'Italy', isCorrect: false),
      Option(code: 'D.', answer: 'Uruguay', isCorrect: true),
    ],
    solution: 'Uruguay was the first country to win world cup',
  ),
];

