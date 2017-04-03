require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.new(id: 2, question: "If ICE enters your home and you know a family member or a friend is in the other room sleeping, what do you tell the agent?")}
  let(:answer_1) { Answer.new(answer: "Tell the truth. That there are other people present in your home.", correct: true, question_id: 2) }
  let(:answer_2) { Answer.new(answer: "Nothing", correct: false, question_id: 2) }
  let(:answer_3) { Answer.new(answer: "Aenean commodo ligula eget dolor. Aenean massa.", correct: false, question_id: 2) }
  
  it "has a question" do 
    expect(question.question).to eq("If ICE enters your home and you know a family member or a friend is in the other room sleeping, what do you tell the agent?")
  end 

  xit "has many possible answers" do
    p question.answers
    expect(question.answers).to include(answer_1)
  end 
end
