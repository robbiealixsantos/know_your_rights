class QuizzesController < ApplicationController
  def index
    questions = Question.all
    @question = questions.sample
  end 

  def show
    questions = Question.all
    @question = questions.sample
  end 
end
