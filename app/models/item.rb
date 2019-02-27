class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  def self.search(search)
    if search
      where(["nombre LIKE ?", "%#{search}%"])
    else
      all
    end
  end
end
