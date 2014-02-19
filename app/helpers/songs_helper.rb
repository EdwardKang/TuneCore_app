module SongsHelper
  def is_match?(song, search_string)
    search_string.split(" ").each do |search_word|
      search_word.capitalize!
      
      match = song.title.split(" ").include?(search_word) || song.artist.split(" ").include?(search_word) || song.album.split(" ").include?(search_word)
      
      return false unless match
    end
    
    true
  end
  
  def matching_songs(search_string)
    songs = Song.order('artist').order('album').all
    
    songs.select { |song| is_match?(song, search_string) }
  end
end
