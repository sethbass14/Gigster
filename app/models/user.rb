class User < ApplicationRecord
  belongs_to :city
  has_many :musician_intruments, :foreign_key => "musician_id"
  has_many :intruments, through: :musician_intruments
  has_many :gigs, :foreign_key => "leader_id"
  has_many :musician_gigs, foreign_key => "musician_id"
  has_many :gigs, through: :musician_gigs

  def to_s
    self.first_name + " " +self.last_name
  end
end
