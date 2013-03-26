class Illust < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  attr_accessible :genre, :picture, :title
end
