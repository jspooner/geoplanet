require 'rubygems'
require File.expand_path(File.join(File.dirname(__FILE__), %w[.. lib geoplanet]))
require 'dalli'



    
describe "GeoPLanet" do
    before(:each) do
      GeoPlanet.appid = "igOIJNTV34HVhkVnhjd1iTbxvbTMla2A9fYSSU2Xd3jTroblEcd3EjdYdb19TblZlA--"
      @CACHE = Dalli::Client.new("localhost:11211")
    end
    after(:each) do
      @CACHE.flush()
    end
    it "save to cache" do
      GeoPlanet::Place.search("San Diego CA").should_not be_nil
    end
end





