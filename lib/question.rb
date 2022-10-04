class Question
  attr_reader :answers, :right_answer, :points, :time
  def initialize(question_info)
    @question = question_info[:text]
    @right_answer = question_info[:right_answer]
    @points = question_info[:points]
    @answers = question_info[:wrong_answers]
    @points = question_info[:points]
    @time = question_info[:time]
    @answers << @right_answer
    @answers.shuffle!
  end

  def question
    "#{@question} - #{@points} б. (#{time} секунд на ответ)"
  end

  def to_s
    "#{question}\n#{@answers.map.with_index(1) { |answer, index| "#{index}. #{answer}" }.join("\n")}"
  end
end
