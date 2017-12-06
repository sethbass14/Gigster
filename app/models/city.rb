class City < ApplicationRecord
  has_many :musicians, :class_name => "User"
  has_many :gigs

  def city_musicians_instrument
    self.musicians.collect {|musician| musician.instruments}.flatten
  end

  def city_instrument_names
    city_musicians_instrument.collect {|instrument| instrument.name}
  end

  # Gives us an array of all the the instances of the musicians that play the instruments that are available in the city.
  # def city_musicians_instance
  #   musicians = self.city_musicians_instrument.collect {|instrument| instrument.musicians}.compact.flatten
  #     musicians.select do |musician|
  #       if musician.city_id == self.id
  #         musician
  #       end
  #     end
  # end



  # def city_musicians_name
  #   city_musicians_instrument.each do |instrument|
  #     instrument.musicians.each do |musician|
  #       musician.select {|musician| musician.city == self}
  #    end
  #  end
  # end
end
