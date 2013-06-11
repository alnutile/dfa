# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
Page.create!(:title => "Home", :content => "Coming Soon...")
Page.create!(:title => "Help", :content => "Coming Soon...")
Page.create!(:title => "Contact", :content => "Coming Soon...")
1..20.each do 
 SpeakerRequest.create!(:date=>Time.now + 1.day, :description=>"Lorem")
end
