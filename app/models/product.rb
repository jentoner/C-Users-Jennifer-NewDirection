# Product Model
class Product < ApplicationRecord
  validates :name, presence: true

  belongs_to :category

  mount_uploader :image, AvatarUploader
end
