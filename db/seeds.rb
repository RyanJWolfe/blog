# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Admin.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

post1 = Post.create!(title: 'First Post', content: '<p>This is the first post</p>')
post2 = Post.create!(title: 'Second Post', content: '<p>This is the second post</p>')
Post.create!(title: 'Third Post', content: '<p>This is the third post</p>')

post1.comments.create!(content: 'This is the first comment')
post1.comments.create!(content: 'This is the second comment')

post2.comments.create!(content: 'This is the first comment')