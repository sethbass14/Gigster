class MusicianGig < ApplicationRecord
  belongs_to :musician
  belongs_to :gig
end
