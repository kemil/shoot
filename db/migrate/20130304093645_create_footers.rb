class CreateFooters < ActiveRecord::Migration
  def self.up
    create_table :footers do |t|
      t.text :content
      t.timestamps
    end

    Footer.create(:content => "All images &amp; text &copy; Eikon Photography 2013 All rights reserved<br />
Washington DC Photographer, Karen Sayre is an award winning photographer specializing in modern, fresh and inspired images.")
  end

  def self.down
    drop_table :footers
  end
end
