require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Airbnb
l1 = Listing.new("Seattle")
l2 = Listing.new("New York")
l3 = Listing.new("Chicago")
l4 = Listing.new("Seattle")

g1 = Guest.new("Lisa")
g2 = Guest.new("Steven")
g3 = Guest.new("Patty")
g4 = Guest.new("Steven")

t1 = Trip.new(l1, g1)
t2 = Trip.new(l1, g3)
t3 = Trip.new(l1, g4)
t4 = Trip.new(l2, g2)
t5 = Trip.new(l2, g3)
t6 = Trip.new(l3, g1)
# t7 = Trip.new(l3, g2)
t8 = Trip.new(l3, g3)
t9 = Trip.new(l4, g1)
t10 = Trip.new(l4, g3)
t11 = Trip.new(l4, g4)
t12 = Trip.new(l3, g1)

###############################################

# 

###############################################

Pry.start
