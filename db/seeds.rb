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


seth = User.create(first_name: "Seth", last_name: "Barden", bio: "a dude", age: 31, city_id: 1, email: "seth@gmail.com", password: "beef", password_confirmation: "beef")
daniel = User.create(first_name: "Daniel", last_name: "Yount", bio: "a dude", age: 30, city_id: 1, email: "daniel@gmail.com",  password: "beef", password_confirmation: "beef")
quinn = User.create(first_name: "Marquinn", last_name: "Mason", bio: "a musician", age: 22, city_id: 5, email: "marquinn@gmail.com",  password: "beef", password_confirmation: "beef")
richard = User.create(first_name: "Richard", last_name: "Sinopoli", bio: "a dude", age: 35, city_id: 3, email: "richard@gmail.com",  password: "beef", password_confirmation: "beef" )
sean = User.create(first_name: "Sean", last_name: "Smith", bio: "originally from jersey", age: 31, city_id: 1, email: "sean@gmail.com",  password: "beef", password_confirmation: "beef" )
jake = User.create(first_name: "Jake", last_name: "Lamont", bio: "Philly Born and raised", age: 31, city_id: 2, email: "jake@gmail.com",  password: "beef", password_confirmation: "beef" )
erica = User.create(first_name: "Erica", last_name: "Smith", bio: "classically trained", age: 31, city_id: 6, email: "erica@gmail.com",  password: "beef", password_confirmation: "beef" )


#Added users

yuliya = User.create(first_name: "Yuliya", last_name: "Smith", bio: "The Crusher", age: 25, city_id: 3, email: "yuliya@gmail.com", password: "beef", password_confirmation: "beef")
dan = User.create(first_name: "Dan", last_name: "Deacon", bio: "Front End Freak", age: 20, city_id: 3, email: "dan@gmail.com", password: "beef", password_confirmation: "beef")
george = User.create(first_name: "George", last_name: "Gor", bio: "a dude", age: 25, city_id: 3, email: "george@gmail.com", password: "beef", password_confirmation: "beef")

silvia = User.create(first_name: "Silvia", last_name: "Chung", bio: "a girl", age: 23, city_id: 4, email: "silvia@gmail.com", password: "beef", password_confirmation: "beef")
meryl = User.create(first_name: "Meryl", last_name: "Homie", bio: "a girl", age: 25, city_id: 4, email: "meryl@gmail.com", password: "beef", password_confirmation: "beef")
johann = User.create(first_name: "Johann", last_name: "Kerr", bio: "baller", age: 27, city_id: 4, email: "johann@gmail.com", password: "beef", password_confirmation: "beef")

tim = User.create(first_name: "Tim", last_name: "Allen", bio: "Tool Time", age: 57, city_id: 5, email: "tim@gmail.com", password: "beef", password_confirmation: "beef")
kat = User.create(first_name: "Kat", last_name: "Jones", bio: "a woman", age: 28, city_id: 5, email: "kat@gmail.com", password: "beef", password_confirmation: "beef")
paul = User.create(first_name: "Paul", last_name: "Montgomery", bio: "Blind Pianist", age: 72, city_id: 5, email: "paul@gmail.com", password: "beef", password_confirmation: "beef")

skylar = User.create(first_name: "Skylar", last_name: "Gudasz", bio: "songwriter", age: 31, city_id: 6, email: "skylar@gmail.com", password: "beef", password_confirmation: "beef")
anne = User.create(first_name: "Anne", last_name: "Hathaway", bio: "Musician and Actor", age: 33, city_id: 6, email: "skylar@gmail.com", password: "beef", password_confirmation: "beef")
lucy = User.create(first_name: "Lucy", last_name: "Pinson", bio: "an angel", age: 64, city_id: 6, email: "lucy@gmail.com", password: "beef", password_confirmation: "beef")


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

#added code
gig5 = Gig.create(name: "Night Time Funk", location: "The Hangry Pickle", date: "2018-01-02", start_time: "22:00", city_id: 1, leader_id: 2)
gig6 = Gig.create(name: "Bashing Night", location: "Wicked Plains", date: "2018-02-03", start_time: "23:00", city_id: 6, leader_id: 3)
gig7 = Gig.create(name: "Sweet Time", location: "Baby Blues", date: "2018-01-13", start_time: "23:00", city_id: 1, leader_id: 2)
gig8 = Gig.create(name: "Red Party In The USA ", location: "The Drunk", date: "2017-12-25", start_time: "20:00", city_id: 5, leader_id: 1)

gig9 = Gig.create(name: "One Time Funk", location: "The Hungry Dogs", date: "2018-02-02", start_time: "22:00", city_id: 1, leader_id: 1)
gig10 = Gig.create(name: "Sweet Crushing Night", location: "Wicked Plains", date: "2018-02-23", start_time: "23:00", city_id: 6, leader_id: 1)
gig11 = Gig.create(name: "Bell Time", location: "Blue Bell", date: "2018-01-16", start_time: "19:00", city_id: 1, leader_id: 2)
gig12 = Gig.create(name: "Red Party", location: "Red Drunk", date: "2017-12-28", start_time: "22:00", city_id: 5, leader_id: 1)

gig12 = Gig.create(name: "Crazy Funk", location: "The Hangry Pickle", date: "2018-04-02", start_time: "22:00", city_id: 1, leader_id: 2)
gig13 = Gig.create(name: "Darling Night", location: "Sweet Plains", date: "2018-05-03", start_time: "23:00", city_id: 2, leader_id: 3)
gig14 = Gig.create(name: "Sweet Melody", location: "Jane's Blues", date: "2018-02-13", start_time: "23:00", city_id: 1, leader_id: 2)
gig15 = Gig.create(name: "Marching Funk ", location: "The Drunk", date: "2017-12-05", start_time: "20:00", city_id: 3, leader_id: 1)


#added code
arr_guitar = [silvia, tim, lucy]
arr_bass = [anne, yuliya, skylar]
arr_drums = [dan, meryl, kat, anne]
arr_keys = [george, johann, paul, lucy]
arr_vocals = [yuliya, silvia, tim, skylar]
arr_trumpet = [dan, meryl, kat, anne]
arr_sax = [george, johann, paul, lucy]

#added code
def seed_musician_instruments_arr(arr, ins)
  arr.each do |musician|
    ins.musicians << musician
  end
end

#added code
seed_musician_instruments_arr(arr_guitar, guitar)
seed_musician_instruments_arr(arr_bass, bass)
seed_musician_instruments_arr(arr_drums, drums)
seed_musician_instruments_arr(arr_keys, keys)
seed_musician_instruments_arr(arr_vocals, vocals)
seed_musician_instruments_arr(arr_trumpet, trumpet)
seed_musician_instruments_arr(arr_sax, saxophone)

def seed_musician_instruments(instrument, musician)
  instrument.musicians << musician
  instrument.save
  musician.save
end

seed_musician_instruments(guitar, jake)
seed_musician_instruments(bass, seth)
seed_musician_instruments(bass, jake)
seed_musician_instruments(keys, richard)
seed_musician_instruments(vocals, erica)
seed_musician_instruments(vocals, seth)
seed_musician_instruments(trumpet, sean)
seed_musician_instruments(saxophone, quinn)
seed_musician_instruments(drums, daniel)

arr1 = [sean, daniel, erica]
arr2 = [daniel, richard]


def seed_gigs(musicians_array, gig)
  musicians_array.each do |musician|
    gig.musicians << musician
    gig.save
    musician.save
  end
end

seed_gigs(arr1, gig3)
seed_gigs(arr2, gig4)
