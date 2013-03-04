class RemoveFilenameFromSeoProfiles < ActiveRecord::Migration
  def self.up
    remove_column :seo_profiles, :filename
  end

  def self.down
    add_column :seo_profiles, :filename, :string
  end
end
