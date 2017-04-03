require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:answer) { Answer.new(answer: "Tell the truth. That there are other people present in your home.", correct: true, question_id: 2)}

  it "has an answer" do 
    expect(answer.answer).to eq("Tell the truth. That there are other people present in your home.")
  end 

  it "is associated with a question" do 
    expect(answer.question_id).to eq(2)
  end 

  it "returns true if it is the correct answer to the question associated with it" do 
    expect(answer.correct).to eq(true)
  end 

  it "returns false if it is not the correct answer to the question associated with it" do
    answer = Answer.new(answer: "Nothing", correct: false, question_id: 2)
    expect(answer.correct).to eq(false)
  end 
end



