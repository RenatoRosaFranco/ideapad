# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create(
  [
    {
      name: 'Renato Franco',
      email: 'renato-franco@scienza.ideapad',
      password: 'test123',
      password_confirmation: 'test123'
    },
    {
      name: 'Carol Mascarenhas',
      email: 'carol-mascarenhas@scienza.ideapad',
      password: 'test456',
      password_confirmation: 'test456'
    },
    {
      name: 'Igor Madruga',
      email: 'igor-madruga@scienza.ideapad',
      password: 'test998',
      password_confirmation: 'test998'
    },
    {
      name: 'Mateus de Lucia',
      email: 'mateus-delucia@scienza.ideapad',
      password: 'test992',
      password_confirmation: 'test992'
    }
  ]
)