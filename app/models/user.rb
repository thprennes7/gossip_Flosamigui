class User < ApplicationRecord
  belongs_to :city
  has_many :potin
  has_many :comment
  has_many :sub_comment
  has_many :sent_message, class_name: "Message"
  has_many :received_message, class_name: "Message"
  has_many :like
end
