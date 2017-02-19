class Question < ActiveRecord::Base
  belongs_to :deck
  has_many :answers
end