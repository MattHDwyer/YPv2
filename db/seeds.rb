# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

########## HAVE BEEN ADDED TO THE DB ALREADY ###################
# role = [
#     {
#         privilege: 'coordinator'
#     },
#     {
#         privilege: 'coach'
#     },
# ]

    # role.each do |role|
    #     Role.create!(role)
    # end
    
#     puts "The seed file ran and put in some ***ROLES****!"

################################################################

# TO BE ADDED: #

# user = [
#     {
#         email: "admin@email.com",
#         password: "123456",
#         role_id: 1,
#     },
#     {
#         email: "coach@email.com"
#         password: "abcdef"
#         role_id: 2,
#     },
# ]
#     user.each do |user|
#         User.create!(user)
#     end


year_level_group = [
    {
        name: "Junior"
    },
    {
        name: "Inter"
    },
    {
        name: "Senior"
    }
]

    year_level_group.each do |ylg|
        YearLevelGroup.create!(ylg)
    end

    puts "DB SEEDED SUCCESSFULLY!"


########## Sports to be added to the database: ###################

#  sport = [
#     {
#         name: "Girls Basketball",
#         season_id: 2,
#         gender: "Girl",
#     },
#     {
#         name: "Boys Football",
#         season_id: 2,
#         gender: "Boy",
#     },
#     {
#         name: "Boys Volleyball",
#         season_id: 1,
#         gender: "Boy",
#     },
#     {
#         name: "Boys Cricket",
#         season_id: 1,
#         gender: "Boy",
#     },
#     {
#         name: "Girls Softball",
#         season_id: 1,
#         gender: "Girl"
#     },
#     {
#         name: "Girls Soccer",
#         season_id: 2,
#         gender: "Girl"
#     },
# ]
