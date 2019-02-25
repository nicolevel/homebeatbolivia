class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :nombre
      t.text :descripcion
      t.string :features
      t.decimal :precio
      t.string :categoria
      t.string :marca
      t.string :color
      t.boolean :disponible

      t.timestamps
    end
  end
end
