class RemoveSeoPageFromProfiles < ActiveRecord::Migration
  def self.up
    remove_column :seo_profiles, :seo_page_id
    remove_column :seo_profiles, :seo_page_type
    add_column :seo_profiles, :category_id, :integer
  end

  def self.down
    add_column :seo_profiles, :seo_page_id, :integer
    add_column :seo_profiles, :seo_page_type, :string
    remove_column :seo_profiles, :category_id
  end
end
