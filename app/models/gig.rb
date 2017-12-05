class Gig < ApplicationRecord
  belongs_to :city
  belongs_to :leader, :class_name => "User"
  has_many :musicians, :class_name => "User"
end
