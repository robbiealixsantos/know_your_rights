# Deck/Track initialization

Deck.create({name: "Before a raid"})
Deck.create({name: "During a raid"})
Deck.create({name: "After a raid"})


# Before a raid deck questions and answers
# The correct answer logic would check to see if the submitted form matches, if not then prompt the user to try again
# Might need an "explanation" attribute that gives more information after the user selects the correct answer

Card.create({question: "Which steps should you take to prepare for a possibility of a raid?",
           answer: "All of the above",
           deck_id: 1
})

# During a raid deck questions and answers

Card.create({question: "If ICE enters your home and you know a family member or a friend is in the other room sleeping, what do you tell the agent?",
           answer: "Tell the truth. That there are other people present in your home.",
           deck_id: 2
})

Card.create({question: "You are currently being stopped for questioning while walking down the street. How should you conduct yourself?",
           answer: "Don't run, don't argue, and keep your hands visible",
           deck_id: 2
})

Card.create({question: "The ICE officer tells you that if you don't answer their questions, they will tell the judge you were uncooperative and will count against you during proceedings. What should you do?",
           answer: "Calmly and peacefully inform the agent that you have the right to remain silent. You cannot be punished for not answering questions",
           deck_id: 2
})

# After a raid questions and answers







