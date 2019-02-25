class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :nombre
      t.string :categoria
      t.string :min_price
      t.string :max_price
      t.string :marca
      t.string :color
      t.string :features

      t.timestamps
    end
  end
end
