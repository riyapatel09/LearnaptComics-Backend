class CreateComicImages < ActiveRecord::Migration[5.0]
  def change
    create_table :comic_images do |t|
      t.integer :comic_id,  index: true
      t.integer :shared_image_id
      t.integer :order, default: 0
      
      t.timestamps
    end
  end
end
