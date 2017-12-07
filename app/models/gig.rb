class Gig < ApplicationRecord
  belongs_to :city
  belongs_to :leader, :class_name => "User"
  has_many :musician_gigs
  has_many :musicians, :class_name => "User", through: :musician_gigs

  # validates :musician_ids, uniqueness: true


end
