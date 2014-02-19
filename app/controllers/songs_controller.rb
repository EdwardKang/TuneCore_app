class SongsController < ApplicationController
  def search
  end
  
  def index
    @songs = Song.order('artist').order('album').all
  end
  
  def selected
    search_string = params[:song]
    
    @songs = matching_songs(search_string)
    
    if request.xhr?
      if @songs.empty?
        render partial: "layouts/no_song"
      else
        render partial: "layouts/song_list", locals: { songs: @songs }
      end
      
    else
      render :selected
    end
  end
  
  
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
