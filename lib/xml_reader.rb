require "rexml/document"

class XmlReader
  def initialize(file_path)
    @file_path = file_path
  end

  def read
    doc = REXML::Document.new(File.new(@file_path))

    questions = doc.get_elements("quiz/question").map do |question|

      wrong_answers = question.get_elements("wrong_answer").map do |answer|
        answer.text
      end

      curr_question_info = {
        text: question.elements["text"].text,
        right_answer: question.elements["right_answer"].text,
        wrong_answers: wrong_answers,
        points: question.elements["points"].text.to_i,
        time: question.elements["time"].text.to_i
      }

      Question.new(curr_question_info)
    end

    questions
  end
end
