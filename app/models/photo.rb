class Photo < ActiveRecord::Base
  belongs_to :category
  
  acts_as_list :scope => :category
  
  has_attached_file :large, :styles => { :original => "x493>", :thumb => "x150>" }
  has_attached_file :thumb, :styles => { :original => "73x73#"}
  
  validates_attachment_presence :large
end
