class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :large_file_name
      t.string :large_content_type
      t.integer :large_file_size
      t.datetime :large_updated_at
      t.string :thumb_file_name
      t.string :thumb_content_type
      t.integer :thumb_file_size
      t.datetime :thumb_updated_at
      t.integer :category_id
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
