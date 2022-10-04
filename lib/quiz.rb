class Quiz
  def initialize(questions)
    @questions = questions
    @points = 0
    @right_answers = 0
    @curr_question = 0
  end

  def current_question
    @questions[@curr_question]
  end

  def play_round(user_answer)
    if current_question.right_answer == current_question.answers[user_answer - 1]
      @right_answers += 1
      @points += current_question.points
      message = "Верный ответ!"
    else
      message = "Неправильно. Правильный ответ: #{current_question.right_answer}"
    end

    @curr_question += 1
    message
  end

  def end?
    @curr_question == @questions.size
  end

  def result
    "Правильных ответов: #{@right_answers} из #{@questions.size}\n" \
    "Набрано баллов: #{@points}"
  end
end
