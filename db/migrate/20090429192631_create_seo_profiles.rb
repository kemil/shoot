class CreateSeoProfiles < ActiveRecord::Migration
  def self.up
    create_table :seo_profiles do |t|
      t.string :title
      t.text :keywords
      t.text :description
      t.string :heading
      t.integer :seo_page_id
      t.string :seo_page_type

      t.timestamps
    end
  end

  def self.down
    drop_table :seo_profiles
  end
end
