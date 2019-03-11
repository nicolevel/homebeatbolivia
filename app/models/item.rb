class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # include PgSearch
  # pg_search_scope :search_by_nombre_and_descripcion, :against => {
  #   :nombre =>'A',
  #   :descripcion => 'B'
  # }

  def self.search(search)
    if search
      where(["nombre LIKE ?", "%#{search}%"])
    else
      all
    end
  end
end
