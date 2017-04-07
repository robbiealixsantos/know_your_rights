require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  let!(:question1) { Question.create(id: 1, question: "Which steps should you take to prepare for a possibility of a raid?") }
  let!(:question2) { Question.create(id: 2, question: "If ICE enters your home and you know a family member or a friend is in the other room sleeping, what do you tell the agent?")}
  let!(:question3) { Question.create(id: 3, question: "You are currently being stopped for questioning while walking down the street. How should you conduct yourself?") }

  describe'GET#index'do
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end 

  describe'GET#show'do
    xit "renders the :show template" do
      get :show, id: question1 
      expect(response).to render_template(partial: '_show')
    end 
  end
end

