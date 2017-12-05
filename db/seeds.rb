# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nyc = City.create(name: "New York")
philly = City.create(name: "Philadelphia")
dc = City.create(name: "Washington DC")
richmond = City.create(name: "Richmond")
atlanta= City.create(name: "Atlanta")
miami= City.create(name: "Miami")


seth = User.create(first_name: "Seth", last_name: "Barden", bio: "a dude", age: 31)
daniel = User.create(first_name: "Daniel", last_name: "Yount", bio: "a dude", age: 30)
quinn = User.create(first_name: "Marquinn", last_name: "Mason", bio: "a musician", age: 22)
richard = User.create(first_name: "Richard", last_name: "Sinopoli", bio: "a dude", age: 35 )
sean = User.create(first_name: "Sean", last_name: "Smith", bio: "originally from jersey", age: 31 )
jake = User.create(first_name: "Jake", last_name: "Lamont", bio: "Philly Born and raised", age: 31 )
erica = User.create(first_name: "Erica", last_name: "Smith", bio: "classically trained", age: 31 )

guitar = Instrument.create(name: "Guitar", description: "Rockin' 6 string")
bass = Instrument.create(name: "Bass", description: "Thumpin' 4 string")
drums = Instrument.create(name: "Drumset", description: "Ole skins")
keys = Instrument.create(name: "Keys", description: "Ivories")
vocals = Instrument.create(name: "Vocals", description: "Singing")
trumpet = Instrument.create(name: "Trumpet", description: "Brass")
saxophone = Instrument.create(name: "Saxophone", description: "Reeds")

gig1 = Gig.create(name: "Electro Funk", location: "The Wicked Pickle", date: "2018-01-23", start_time: "22:00", city_id: 1, leader_id: 2 )
gig2 = Gig.create(name: "Salsa Night", location: "The Ball and Chain", date: "2018-02-15", start_time: "23:00", city_id: 6, leader_id: 7)
gig3 = Gig.create(name: "Jazz Time", location: "The Blue Note", date: "2018-01-15", start_time: "23:00", city_id: 1, leader_id: 1)
gig4 = Gig.create(name: "Rock and Beer", location: "The Drunken Penny", date: "2017-12-22", start_time: "20:00", city_id: 5, leader_id: 3)

nyc.musicians << seth
nyc.musicians << daniel
dc.musicians << richard
atlanta.musicians << quinn
miami.musicians << erica
philly.musicians << jake
miami.musicians << sean

guitar.musicians << jake
bass.musicians << seth
bass.musicians << jake
keys.musicians << richard
vocals.musicians << erica
vocals.musicians << seth
trumpet.musicians << sean
saxophone.musicians << quinn
drums.musicians << daniel

arr1 = [sean, daniel]
arr2 = [daniel, richard]

def seed_gigs(musicians_array, gig)
  musicians_array.each do |musician|
    gig.musicians << musician
  end
end

seed_gigs(arr1, gig3)
seed_gigs(arr2, gig4)
