class SongsController < ApplicationController
  def search
  end
  
  def index
    @songs = Song.order('artist').order('album').all
  end
end
