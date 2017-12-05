class User < ApplicationRecord
  belongs_to :city
  has_many :musician_instruments, :foreign_key => "musician_id"
  has_many :instruments, through: :musician_instruments
  has_many :bookings, :class_name => "Gig", :foreign_key => "leader_id"
  has_many :musician_gigs, :foreign_key => "musician_id"
  has_many :gigs, through: :musician_gigs
end
