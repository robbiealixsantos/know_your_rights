require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:answer) { Answer.new(answer: "Tell the truth. That there are other people present in your home.", correct: true, question_id: 2)}

  describe "attributes" do
    it { should have_db_column(:answer) }
    it { should have_db_column(:correct) }
    it { should have_db_column(:question_id) }

    it "returns an answer as a string" do 
      expect(answer.answer).to be_kind_of(String)
    end 

    it "returns an whether or not an answer is correct as a boolean" do 
      expect(answer.correct).to be(true).or be(false)
    end 

    it "returns the question id of an answer as an integer" do 
      expect(answer.question_id).to be_kind_of(Integer)
    end 
  end

  describe "associations" do
    it { should belong_to(:question) }
  end

  it "returns true if it is the correct answer to the question associated with it" do 
    expect(answer.correct).to eq(true)
  end 

  it "returns false if it is not the correct answer to the question associated with it" do
    answer = Answer.new(answer: "Nothing", correct: false, question_id: 2)
    expect(answer.correct).to eq(false)
  end 
end



