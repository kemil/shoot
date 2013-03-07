class StaticController < ApplicationController
  def home
    @category = Category.home_category.first
    @photos = @category.photos
  end

  def about
    @seo_profile = SeoProfile.find(2)
  end
  
  def services
    @seo_profile = SeoProfile.find(2)
    @services = Service.find(:all, :order =>"position ASC")
  end

end
