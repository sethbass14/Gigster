class City < ApplicationRecord
  has_many :musicians, :class_name => "User"
  has_many :gigs

  def city_musicians_instrument
    self.musicians.collect {|musician| musician.instruments}.flatten
  end

  def city_instrument_names
    city_musicians_instrument.collect {|instrument| instrument.name}.uniq!
  end

  def search_city_by_instrument(instrument)
    self.musicians.includes(:instruments).where("instruments.name" => instrument)
  end

end
