def faker_data(number_of)
  [].tap do |data|
    number_of.times { |i| data << Faker::Name.name }
  end
end

titles = faker_data(500)
albums = faker_data(100)
artists = faker_data(10)

artists.each do |artist|
  10.times do
    album = albums.pop
    
    5.times do
      Song.create(title: titles.pop, artist: artist, album: album)
    end
  end
end