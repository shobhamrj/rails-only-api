# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb


User.create(username: "user1", password: "password1", created_at: DateTime.now, updated_at: DateTime.now)
User.create(username: "user2", password: "password2", created_at: DateTime.now, updated_at: DateTime.now)

Fact.create(user_id: 1, fact: "Fact 1", likes: 5, created_at: DateTime.now, updated_at: DateTime.now)
Fact.create(user_id: 1, fact: "Fact 2", likes: 10, created_at: DateTime.now, updated_at: DateTime.now)
Fact.create(user_id: 2, fact: "Fact 3", likes: 3, created_at: DateTime.now, updated_at: DateTime.now)
Fact.create(user_id: 2, fact: "Fact 4", likes: 10, created_at: DateTime.now, updated_at: DateTime.now)
Fact.create(user_id: 2, fact: "Fact 4", likes: 52, created_at: DateTime.now, updated_at: DateTime.now)