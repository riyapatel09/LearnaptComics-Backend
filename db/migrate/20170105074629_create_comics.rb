class CreateComics < ActiveRecord::Migration[5.0]
  def change 
    create_table :comics do |t|
      t.string :name, index: true # 255
      t.text :short_description, index: true
      t.text :long_description
      t.integer :pages_count, default: 0
      t.integer :size, default: 0
      t.integer :users_count, default: 0
      t.integer :price, default: 0
      t.boolean :paid, default: false
      t.boolean :featured, default: false
      t.boolean :popular, default: false
      t.boolean :published, default: false
      t.integer :cover_image_id
      
      t.timestamps
    end
  end
end
