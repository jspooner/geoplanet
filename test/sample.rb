require 'rubygems'
require File.expand_path(File.join(File.dirname(__FILE__), %w[.. lib geoplanet]))
require 'dalli'

GeoPlanet.appid = "igOIJNTV34HVhkVnhjd1iTbxvbTMla2A9fYSSU2Xd3jTroblEcd3EjdYdb19TblZlA--"

CACHE = Dalli::Client.new("localhost:11211")
CACHE.flush()
GeoPlanet.debug = true

GeoPlanet.memcached = CACHE
r = GeoPlanet::Place.search("San Diego CA").inspect
puts " "
puts " "
puts "result is " + r
puts " "
puts " "
r = GeoPlanet::Place.search("San Diego CA").inspect
puts " "
puts " "
puts "result is " + r

# r = GeoPlanet::Place.search("San Diego CA").inspect
# puts " "
# puts " "
# puts "result is " + r
# puts " "
# puts " "
# r = GeoPlanet::Place.search("San Diego CA").inspect
# puts " "
# puts " "
# puts "result is " + r
