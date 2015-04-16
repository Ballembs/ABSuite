class LatestNews < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
