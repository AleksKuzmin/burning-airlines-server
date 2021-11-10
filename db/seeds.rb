require 'date'

Airplane.destroy_all
a1 = Airplane.create( :name => '756', :rows => 24, :columns => 6 )
a2 = Airplane.create( :name => '747', :rows => 40, :columns => 6 )
a3 = Airplane.create( :name => '737', :rows => 20, :columns => 4 )

puts "#{Airplane.count} airplanes created."

Flight.destroy_all
f1 = Flight.create( :origin => "JFK", :destination => 'SFO', :date => DateTime.now, :airplane_id => a1.id )
f2 = Flight.create( :origin => "JFK", :destination => 'LAX', :date => DateTime.now, :airplane_id => a2.id )
f3 = Flight.create( :origin => "MEL", :destination => 'SYD', :date => DateTime.now, :airplane_id => a3.id )

puts "#{Flight.count} flights created."

User.destroy_all
u1 = User.create( :name => "Joel", :email => 'joel@ga.co', :password_digest => 'chicken', :admin => true )
u2 = User.create( :name => "Rowena", :email => 'rowena@ga.co', :password_digest => 'chicken', :admin => false )
u3 = User.create( :name => "Pat", :email => 'pat@ga.co', :password_digest => 'chicken', :admin => false )

puts "#{User.count} users created."

Reservation.destroy_all;
r1 = Reservation.create( :user_id => u1.id, :flight_id => f1.id, :row => 0, :column => 0 )
r2 = Reservation.create( :user_id => u3.id, :flight_id => f1.id, :row => 2, :column => 2 )
r3 = Reservation.create( :user_id => u2.id, :flight_id => f2.id, :row => 6, :column => 5 )
r4 = Reservation.create( :user_id => u1.id, :flight_id => f2.id, :row => 14, :column => 1 )
r5 = Reservation.create( :user_id => u1.id, :flight_id => f3.id, :row => 15, :column => 0 )
r6 = Reservation.create( :user_id => u2.id, :flight_id => f3.id, :row => 7, :column => 3 )
r7 = Reservation.create( :user_id => u3.id, :flight_id => f3.id, :row => 19, :column => 4 )

puts "#{ Reservation.count } reservations created"

puts "Flights and Users"
f1.users << u1 << u3
f2.users << u2 << u1
f3.users << u1 << u2 << u3
