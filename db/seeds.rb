# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tweeters_list = [
  [1, "Madhu", "bmadhusu", "12/31/2019 10:00AM", "private"],
  [2, "bmj", "bmj942842", "11/24/2019 9:00PM", "Org"]
]

events_list = [
  [ 2, "E-Waste Recycling & Paper Shredding", "01/04/2020 10:00AM", "Petco/Modell’s shopping center on 77th Street and 31st Avenue", "11373", "NY-14" ]

]

tweeters_list.each do |id, name, handle, dt, typ|
  Tweeter.create(id: id, name: name, twitter_handle: handle, last_checked: dt, 
  type_of_tweeter: typ)
end

p "Created #{Tweeter.count} tweeters"

events_list.each do |id, title, event_date, location_address, zip, cd|
  Event.create( tweeter_id: id, title: title, event_date: DateTime.current(), location_address: location_address, zip: zip, congressional_district: cd, created_at: DateTime.current(), updated_at: DateTime.current())
end

p "Created #{Event.count} events"