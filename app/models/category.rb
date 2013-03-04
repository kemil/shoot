class Category < ActiveRecord::Base
  has_many :photos, :order => :position
  has_one :seo_profile
  
  accepts_nested_attributes_for :photos, :allow_destroy => true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  accepts_nested_attributes_for :seo_profile, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  
  acts_as_list
  
  validates_presence_of :name
  
  named_scope :home_category, :conditions => { :is_home => true }
  named_scope :menu_categories, :conditions => { :is_home => false }, :order => :position
  
  def to_param
    if defined? seo_profile
      unless seo_profile.slug.blank?
        "#{id}-#{seo_profile.slug}"
      else
        "#{id}-#{name.downcase.strip.gsub(/\ /, '-').gsub(/[^\w\-]/, '').gsub(/[-]+/, '-')}"
      end
    else
      "#{id}"
    end
  end
  
end
