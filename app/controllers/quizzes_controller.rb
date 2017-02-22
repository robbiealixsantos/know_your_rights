class QuizzesController < ApplicationController
  def index
    questions = Question.all
    @question = questions.sample
  end

  def create
    Question.check_answer(response)
  end
end
