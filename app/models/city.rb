class City < ApplicationRecord
  has_many :user
  has_many :potin
end
