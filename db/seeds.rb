# Seed data

puts "Seeding data..."

20.times do
    # Actor
    Actor.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )

    # Character

    Character.create(
        name: Faker::TvShows::GameOfThrones.character,
        actor_id: Faker::Number.between(from: 1, to: 8),
        show_id: Faker::Number.between(from: 1, to: 10),
        catchphrase: Faker::TvShows::GameOfThrones.quote
    )
end

    # Show
 10.times do  

    # Show
    Show.create(
        name: Faker::TvShows::GameOfThrones.city,
        day: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
        season: Faker::Number.between(from: 1, to: 8),
        genre: Faker::TvShows::GameOfThrones.dragon,
        network_id: Faker::Number.between(from: 1, to: 10)
    )

    # Character
    

    # Network
    Network.create(
        call_letters: Faker::TvShows::GameOfThrones.house,
        channel: Faker::Number.between(from: 1, to: 10)
    )
end


puts "Seeding completed."