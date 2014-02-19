def faker_data(number_of)
  [].tap do |data|
    number_of.times { |i| data << Faker::Name.name }
  end
end

titles = faker_data(500)
albums = faker_data(100)
artists = faker_data(10)

titles.each do |title|
  Song.create(title: title, artist: artists.sample, album: albums.sample)
end