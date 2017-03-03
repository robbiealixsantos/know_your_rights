class Question < ApplicationRecord
  has_many :answers, :dependent => :delete_all

  def check_answer(response)
    answers = self.answers
    correct_answer = answers.find { |answer| answer.correct == true }
    
    if response == correct_answer.answer
      "That is correct!"
    else
      "The correct answer is '#{correct_answer.answer}'"
    end
  end
end

