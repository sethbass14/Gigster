class User < ApplicationRecord
  has_secure_password
  belongs_to :city
  has_many :musician_instruments, :foreign_key => "musician_id"
  has_many :instruments, through: :musician_instruments
  has_many :bookings, :class_name => "Gig", :foreign_key => "leader_id"
  has_many :musician_gigs, :foreign_key => "musician_id"
  has_many :gigs, through: :musician_gigs

  validates :first_name, :last_name, :bio, :age, presence: true


  def to_s
    self.first_name + " " +self.last_name
  end

  # def other_instrument
  #     self.instruments
  # end
  #
  # def other_instrument=(name)
  #   Instrument.find_or_create_by(name: name)
  # end
end
