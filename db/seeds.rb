# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Highscore.delete_all

Block.create({shape: "T" })
Block.create({shape: "I" })
Block.create({shape: "O" })
Block.create({shape: "L" })
Block.create({shape: "J" })
Block.create({shape: "S" })
Block.create({shape: "Z"})


SusieQ = Highscore.create(username: "susieQ", score: 1)
RandytheMan = Highscore.create(username:"randyman", score: 42)
Jojo = Highscore.create(username:"JOJO", score: 3)