require 'rails_helper'

RSpec.describe Question, type: :model do
  let!(:question) { Question.create(id: 2, question: "If ICE enters your home and you know a family member or a friend is in the other room sleeping, what do you tell the agent?")}
  let!(:answer_1) { Answer.create(answer: "Tell the truth. That there are other people present in your home.", correct: true, question_id: 2) }
  let!(:answer_2) { Answer.create(answer: "Nothing", correct: false, question_id: 2) }
  let!(:answer_3) { Answer.create(answer: "Aenean commodo ligula eget dolor. Aenean massa.", correct: false, question_id: 2) }
  
  describe "attributes" do
    it { should have_db_column(:question) }
  end

  describe "associations" do
    it { should have_many(:answers) }
  end

  it "has a question" do 
    expect(question.question).to eq("If ICE enters your home and you know a family member or a friend is in the other room sleeping, what do you tell the agent?")
  end 

  describe "#check_answer" do 
    it "returns 'that is correct' if the answer is correct" do 
      expect(question.check_answer("Tell the truth. That there are other people present in your home.")).to eq("That is correct!")
    end 

    it "gives the user the correct answer if the answer entered is incorrect" do 
      expect(question.check_answer("Nothing")).to eq("The correct answer is 'Tell the truth. That there are other people present in your home.'")
    end 
  end 
end
