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
end
