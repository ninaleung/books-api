100.times do |book|
  Book.create(
    :title => Faker::Book.title,
    :author => Faker::Book.author,
    :publisher => Faker::Book.publisher,
    :genre => Faker::Book.genre,
    :year => rand(1900..2015),
    :details => false
    )
end

puts 'Done!'