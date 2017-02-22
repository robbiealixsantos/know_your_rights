class QuizzesController < ApplicationController
  def index
    questions = Question.all
    @question = questions.sample
  end

  def create
    user_response = params[:response]
    Question.check_answer(user_response)
  end
end
