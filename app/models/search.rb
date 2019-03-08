class Search < ApplicationRecord
  def search_items
    items = Item.all
    items = items.where(["nombre LIKE ?", nombre]) if nombre.present?
    items = items.where(["categoria LIKE ?", categoria]) if categoria.present?
    items = items.where(["precio >= ?", min_price]) if min_price.present?
    items = items.where(["precio <= ?", max_price]) if max_price.present?
    items = items.where(["marca LIKE ?", marca]) if marca.present?
    items = items.where(["color LIKE ?", color]) if color.present?
    items = items.where(["features LIKE ?", features]) if features.present?
    return items
  end
end
