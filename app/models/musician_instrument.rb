class MusicianInstrument < ApplicationRecord
  belongs_to :musician
  belongs_to :instrument
end
