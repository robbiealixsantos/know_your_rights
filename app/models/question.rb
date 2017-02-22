class Question < ApplicationRecord
  has_many :answers, :dependent => :delete_all

  def self.check_answer(response)
    if response == "true"
      puts "correct"
    end
  end
end