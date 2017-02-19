# Before a raid deck questions and answers
# The correct answer logic would check to see if the submitted form matches, if not then prompt the user to try again
# Might need an "explanation" attribute that gives more information after the user selects the correct answer

Question.create({question: "Which steps should you take to prepare for a possibility of a raid?"
})

Answer.create({answer: "All of the above", correct: true, question_id: 1})
Answer.create({answer: "Nothing", correct: false, question_id: 1})
Answer.create({answer: "All you need to do is find a lawyer and you'll be perfectly fine.", correct: false, question_id: 1})

# During a raid deck questions and answers

Question.create({question: "If ICE enters your home and you know a family member or a friend is in the other room sleeping, what do you tell the agent?"
})

Answer.create({answer: "Tell the truth. That there are other people present in your home.", correct: true, question_id: 2})
Answer.create({answer: "Nothing", correct: false, question_id: 2})
Answer.create({answer: "Aenean commodo ligula eget dolor. Aenean massa.", correct: false, question_id: 2})

Question.create({question: "You are currently being stopped for questioning while walking down the street. How should you conduct yourself?"
})

Answer.create({answer: "Don't run, don't argue, and keep your hands visible", correct: true, question_id: 3})
Answer.create({answer: "Nothing", correct: false, question_id: 3})
Answer.create({answer: "All you need to do is find a lawyer and you'll be perfectly fine.", correct: false, question_id: 3})

Question.create({question: "The ICE officer tells you that if you don't answer their questions, they will tell the judge you were uncooperative and will count against you during proceedings. What should you do?"
})

Answer.create({answer: "Calmly and peacefully inform the agent that you have the right to remain silent. You cannot be punished for not answering questions", correct: true, question_id: 4})
Answer.create({answer: "Nothing", correct: false, question_id: 4})
Answer.create({answer: "All you need to do is find a lawyer and you'll be perfectly fine.", correct: false, question_id: 4})

# After a raid questions and answers

Question.create({question: "At the end of this ordeal, you find yourself in custody. What should you be planning for when you to the detention center?"
})

Answer.create({answer: "Remember to remain calm throught the process. The first thing you should do ", correct: true, question_id: 5})
Answer.create({answer: "Nothing", correct: false, question_id: 5})
Answer.create({answer: "All you need to do is find a lawyer and you'll be perfectly fine.", correct: false, question_id: 5})





