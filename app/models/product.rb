# Product Model
class Product < ApplicationRecord
  validates :name, presence: true

  mount_uploader :image, AvatarUploader
end
