class SongsController < ApplicationController
  def search
  end
  
  def index
    @songs = Song.all.order('artist').order('album')
  end
end
