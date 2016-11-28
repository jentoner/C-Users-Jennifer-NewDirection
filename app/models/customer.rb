# Customer Model
class Customer < ApplicationRecord
  belongs_to :province

  has_many :orders

  validates :fullname, presence: true

  mount_uploader :avatar, AvatarUploader
end
