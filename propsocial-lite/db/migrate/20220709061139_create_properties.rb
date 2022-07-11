class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.monetize :price
      t.text :description
      t.integer :size
      t.timestamps
    end
  end
end
