# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.destroy_all
Student.destroy_all

vidhi  = Instructor.create(name: "Vidhi")
raul   = Instructor.create(name: "Raul")
david = Instructor.create(name: "David")

Student.create(name: "Caleb", age: 27, major: "Computer Science", instructor_id: david.id)
Student.create(name: "Daniel", age: 28, major: "Mathmatics", instructor_id: raul.id)
Student.create(name: "Kev", age: 27, major: "Engineering", instructor_id: vidhi.id)
Student.create(name: "Jasmine", age: 32, major: "Biology", instructor_id: raul.id)