class CreateProducts < ActiveRecord::Migration

  def up
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, :precision => 5, :scale => 2

      t.timestamps null: false
    end
  end

  def down
  	drop_table :products
  end

end
