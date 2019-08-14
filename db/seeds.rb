User.destroy_all
puts "creating users"
u1 = User.create :email => 'aj@ga.co', :name => 'AJ', :password => '123', :admin => true
u2 = User.create :email => 'meo@ga.co', :name => 'Meo', :password => '123', :admin => true
u3 = User.create :email => 'people@ga.co', :name => 'Someone', :password => '123', :admin => false


Plane.destroy_all
puts "creating planes"
p1 = Plane.create :name => "A380", :row => '40', :column => '6'
p2 = Plane.create :name => "B747", :row => '50', :column => '8'

Flight.destroy_all
puts "creating flights"
f1 = Flight.create :flight_number => "A12345", :origin => "Sydney", :destination => "Melbourne", :date => "12-05-2019"
f2 = Flight.create :flight_number => "A99999", :origin => "Perth", :destination => "Melbourne", :date => "15-05-2019"
f3 = Flight.create :flight_number => "B00000", :origin => "Brisbane", :destination => "Darwin", :date => "12-05-2019"

puts "associations"

# Planes and Flights
p1.flights << f1 << f2
p2.flights << f3

# Flights and users
f1.users << u1 << u2
f2.users << u2 << u3