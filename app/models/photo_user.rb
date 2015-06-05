class PhotoUser < ActiveRecord::Base
  validates :photo, presence: true
  belongs_to :user
  mount_uploader :photo, PictureUploader
  self.per_page = 16
end
