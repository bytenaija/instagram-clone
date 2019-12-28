class Post < ApplicationRecord
  belongs_to :account
  before_create :set_active

  mount_uploader :image, ImageUploader
  
  scope :active, -> {where active: true}


  def set_active
    self.active = true
  end
end
