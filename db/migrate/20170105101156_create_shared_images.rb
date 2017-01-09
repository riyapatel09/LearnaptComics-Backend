class CreateSharedImages < ActiveRecord::Migration[5.0]
  def change
    create_table :shared_images do |t|
      t.string :original_image
      t.string :compressed_image
      t.string :thumbnail_image
      t.integer :original_image_size, default: 0
      t.integer :compressed_image_size, default: 0
      t.integer :thumbnail_image_size, default: 0

      t.timestamps
    end
  end
end
