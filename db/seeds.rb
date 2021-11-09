require 'date'

Airplane.destroy_all
a1= Airplane.create(:name => '756', :rows => 24, :columns => 6)
a2= Airplane.create(:name => '747', :rows => 40, :columns => 6)
a3= Airplane.create(:name => '737', :rows => 20, :columns => 4)

puts "#{Airplane.count} airplanes created."

Flight.destroy_all
f1=Flight.create(:origin => "JFK", :destination => 'SFO', :date => Date.new, :airplane_id => a1.id)
f2=Flight.create(:origin => "JFK", :destination => 'LAX', :date => Date.new, :airplane_id => a2.id)
f3=Flight.create(:origin => "MEL", :destination => 'SYD', :date => Date.new, :airplane_id => a3.id)

puts "#{Flight.count} flights created."

User.destroy_all
u1=User.create(:name => "Joel", :email => 'joel@ga.co', :password_digest => 'chicken', :admin => true )
u2=User.create(:name => "Rowena", :email => 'rowena@ga.co', :password_digest => 'chicken', :admin => false )
u3=User.create(:name => "Pat", :email => 'pat@ga.co', :password_digest => 'chicken', :admin => false )

puts "#{User.count} users created."

puts "Flights and Users"
f1.users << u1 << u3
f2.users << u2 << u1
f3.users << u1 << u2 << u3
