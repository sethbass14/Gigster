class City < ApplicationRecord
  has_many :musicians, :class_name => "User"
  has_many :gigs

  def city_instruments
    self.musicians.each do |musician|
      musician.instruments.select {|instrument| instrument}
    end
  end
end
