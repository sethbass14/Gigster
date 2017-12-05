class MusicianGig < ApplicationRecord
  belongs_to :musician, :class_name => "User"
  belongs_to :gig
end
