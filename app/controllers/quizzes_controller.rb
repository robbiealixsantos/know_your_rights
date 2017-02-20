class QuizzesController < ApplicationController
  def index
    questions = Question.all
    @question = questions.sample
  end

  def show

  end
end
