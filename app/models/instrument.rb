class Instrument < ApplicationRecord
  has_many :musician_intruments
  has_many :musicians, through: :musician_intruments
end
