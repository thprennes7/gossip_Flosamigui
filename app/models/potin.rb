class Potin < ApplicationRecord
  belongs_to :user
  has_many :tag
  has_many :comment
  has_many :like
end
