class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :title
end
