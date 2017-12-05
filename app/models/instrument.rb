class Instrument < ApplicationRecord
  has_many :musician_instruments
  has_many :musicians, :class_name => "User", through: :musician_instruments
end
