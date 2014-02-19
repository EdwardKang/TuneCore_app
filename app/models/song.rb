class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :title
  validates_presence_of :album, :artist, :title
end
