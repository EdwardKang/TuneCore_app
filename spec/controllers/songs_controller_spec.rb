require 'spec_helper'
include SongsHelper

describe SongsController do
  before do 
    Song.any_instance.stub(artist: "Kendrick Lamar", album: "Section 80", title: "Ronald Reagan Era")
  end
  
  describe "#is_match? returns true or false when an attribute does or does not match the search term" do
    it "returns true" do
      is_match?(Song.new, "Kendrick").should eq(true)
    end
    
    it "returns false" do
      is_match?(Song.new, "askdjasj").should eq(false)
    end
  end
  
  describe "#matching_songs returns list of songs when a search terms matches a song in the database" do
    it "returns array" do
      matching_songs("Corinthians").class.should eq(Array)
    end
    
    it "should return the correct artist, album and title" do
      song = matching_songs("Kendrick").first
      song.artist.should eq("Kendrick Lamar")
      song.album.should eq("Section 80")
      song.title.should eq("Ronald Reagan Era")
    end
    
    it "returns empty array if no match exists" do
      matching_songs("Chapter Six").empty?.should eq(true)
    end
  end
end