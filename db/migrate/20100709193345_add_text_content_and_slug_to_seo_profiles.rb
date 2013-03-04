class AddTextContentAndSlugToSeoProfiles < ActiveRecord::Migration
  def self.up
    add_column :seo_profiles, :text_content, :text
    add_column :seo_profiles, :slug, :string
  end

  def self.down
    remove_column :seo_profiles, :slug
    remove_column :seo_profiles, :text_content
  end
end
