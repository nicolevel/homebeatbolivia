class Item < ApplicationRecord
  def self.search(search)
    if search
      where(["nombre LIKE ?", "%#{search}%"])
    else
      all
    end
  end
end
