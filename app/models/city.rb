class City < ApplicationRecord
  has_many :musicians, :class_name => "User"
  has_many :gigs
end
