# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: 'Vasya')
categories = Category.create([{title: 'Ryby'}, {title: 'Python'}])
tests = Test.create([{title: 'Руби массивы', level: 2, category_id: categories.first.id},
                    {title: 'Python методы', level: 3, category_id: categories.last.id}])

questions = Question.create([{body: ' Аббривиатура массива', test_id: tests.first.id},
                             {body: 'Метод для вывода сообщения на экран', test_id: tests.last.id}])
Answer.create([{body: 'Arr', correct: true, question_id: questions.first.id},
                        {body: 'print', correct: true, question_id: questions.last.id}])
