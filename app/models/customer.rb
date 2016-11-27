# Customer Model
class Customer < ApplicationRecord
  belongs_to :province

  validates :fullname, presence: true
end
