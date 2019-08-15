User.destroy_all
puts "creating users"
u1 = User.create :email => 'aj@ga.co', :name => 'AJ', :password => '123', :admin => true
u2 = User.create :email => 'meo@ga.co', :name => 'Meo', :password => '123', :admin => true
u3 = User.create :email => 'people@ga.co', :name => 'Someone', :password => '123', :admin => false


Plane.destroy_all
puts "creating planes"
p1 = Plane.create :name => "A380", :row => '40', :column => '6'
p2 = Plane.create :name => "B747", :row => '50', :column => '8'
p3 = Plane.create :name => "B747", :row => '50', :column => '8'
p4 = Plane.create :name => "A380", :row => '50', :column => '8'

Flight.destroy_all
puts "creating flights"
f1 = Flight.create :flight_number => "A12345", :origin => "Sydney", :destination => "Melbourne", :date => "12-05-2019"
f2 = Flight.create :flight_number => "A99999", :origin => "Perth", :destination => "Melbourne", :date => "15-05-2019"
f3 = Flight.create :flight_number => "B00001", :origin => "Brisbane", :destination => "Darwin", :date => "12-05-2019"
f4 = Flight.create :flight_number => "C00222", :origin => "Brisbane", :destination => "Darwin", :date => "16-15-2019"
f5 = Flight.create :flight_number => "D00033", :origin => "Brisbane", :destination => "Darwin", :date => "12-15-2019"
f6 = Flight.create :flight_number => "E00005", :origin => "Sydney", :destination => "Melbourne", :date => "11-15-2019"
f7 = Flight.create :flight_number => "F00066", :origin => "Brisbane", :destination => "Darwin", :date => "16-15-2019"
f8 = Flight.create :flight_number => "G00022", :origin => "Perth", :destination => "Melbourne", :date => "18-25-2019"
f9 = Flight.create :flight_number => "H00044", :origin => "Brisbane", :destination => "Perth", :date => "19-25-2019"

puts "associations"

# Planes and Flights
p1.flights << f1 << f2 << f8
p2.flights << f3 << f8 << f9
p3.flights << f4 << f5
p4.flights << f6 << f7



# Flights and users
f1.users << u1 << u2
f2.users << u2 << u3

# testing user authe

Page.destroy_all
puts "creating pages"
Page.create :title => "Search Flights", :content => "Search for Flights", allow_unauth: true
Page.create :title => "Book Flights", :content => "Booking Flights coming soon", allow_unauth: false
Page.create :title => "Create Planes", :content => "Create planes", allow_unauth: false
Page.create :title => "Create Flights", :content => "Create Flights", allow_unauth: false

