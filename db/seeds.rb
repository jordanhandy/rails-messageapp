# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: "john", password: "imjohndoe")
# User.create(username: "jacob", password: "imjacobdoe")
# User.create(username: "mark", password: "immarkdoe")
# User.create(username: "matthew", password: "immatthewdoe")
# User.create(username: "luke", password: "imlukedoe")

Message.create(body: "Hello there", user_id: 2)
Message.create(body: "How do you do", user_id: 3)
Message.create(body: "HOWDY", user_id: 4)
Message.create(body: "No, I don't like this", user_id: 5)
Message.create(body: "Bye", user_id: 6)
