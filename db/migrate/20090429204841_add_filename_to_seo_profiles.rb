class AddFilenameToSeoProfiles < ActiveRecord::Migration
  def self.up
    add_column :seo_profiles, :filename, :string
  end

  def self.down
    remove_column :seo_profiles, :filename
  end
end
