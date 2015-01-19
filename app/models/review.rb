class Review < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :video, presence: true

  mount_uploader :image, ImageUploader
end
