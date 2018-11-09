# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = User.create!(username: "Armando")
c = User.create!(username: "Chase")

p1 = Poll.create!(user_id: a.id, title: 'AppAcademy Survival Tips')
p2 = Poll.create!(user_id: c.id, title: 'Good places to eat')

q1 = Question.create!(text: "How do you survive AppAcademy?", poll_id: p1.id)
q2 = Question.create!(text: "Where is there good food?", poll_id: p2.id)

ac1 = AnswerChoice.create!(text: "You don't! AppAcademy survives you!", question_id: q1.id)
ac2 = AnswerChoice.create!(text: "Dude, they're all around you!", question_id: q2.id)

Response.create!(answer_choice_id: ac1.id, user_id: a.id)
Response.create!(answer_choice_id: ac2.id, user_id: c.id)