class City < ApplicationRecord
  has_many :musicians
  has_many :gigs
end
