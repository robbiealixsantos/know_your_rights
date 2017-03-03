class QuestionsController < ApplicationController
  def index
    questions = Question.all
    @question = questions.sample
  end

  def new
    @questions = Question.all
  end 

  def create
    @questions = Question.all
    @question = @questions.find { |question| question.id == (params[:question][:question_id]).to_i }
    @user_response = params[:question][:answer]

    @answer = @question.check_answer(@user_response)

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end 
  end
end


