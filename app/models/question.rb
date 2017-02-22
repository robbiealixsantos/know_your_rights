class Question < ApplicationRecord
  has_many :answers

  def self.check_answer(response)
    if response = true
      puts "correct"
    end
  end
end