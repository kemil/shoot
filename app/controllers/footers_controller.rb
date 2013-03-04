class FootersController < ApplicationController

  def edit
  	unless params[:category_id].nil?
      @category = Category.find(params[:category_id])
    else
    	@category = Category.find_by_name("Home")
    end
  end

  def update
  	unless params[:category_id].nil?
      @category = Category.find(params[:category_id])
    else
    	@category = Category.find_by_name("Home")
    end
  	respond_to do |format|
      if @footer.update_attributes(params[:footer])
      	@category.seo_profile.update_attributes(params[:seo_profile])
        flash[:notice] = 'Footer was successfully created.'
        format.html { if @category.nil? then redirect_to root_url else redirect_to @category end }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @footer.errors, :status => :unprocessable_entity }
      end
    end
  end

  def show
  end

end
