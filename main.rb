require "timeout"
require_relative "./lib/xml_reader.rb"
require_relative "./lib/question.rb"
require_relative "./lib/quiz.rb"

questions = XmlReader.new("#{__dir__}/data/quiz.xml").read.shuffle!
quiz = Quiz.new(questions)

puts "Мини-викторина. Ответьте на вопросы."
puts

loop do
  puts quiz.current_question
  puts

  user_input = -1

  start_time = Time.now

  begin
    Timeout::timeout(quiz.current_question.time) {
      until (1..4).include?(user_input) do
        print "> "
        user_input = gets.to_i
      end
    }
  rescue Timeout::Error
    abort "Время на ответ вышло! Игра окончена\n#{quiz.result}"
  end

  puts
  puts quiz.play_round(user_input)
  puts
  abort quiz.result if quiz.end?
end

puts quiz.result
