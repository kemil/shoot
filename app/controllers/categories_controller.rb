class CategoriesController < ApplicationController
  before_filter :permission, :except => :show
  # GET /categories
  # GET /categories.xml
  def index
    @categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end

  # GET /categories/1
  # GET /categories/1.xml
  def show
    @category = Category.find(params[:id])
    @photos = @category.photos

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categories/new
  # GET /categories/new.xml
  def new
    @category = Category.new
    
    @category.photos.build if @category.photos.blank?
    @category.build_seo_profile

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
    
    @category.photos.build if @category.photos.blank?
    @category.build_seo_profile if @category.seo_profile.nil?

  end

  # POST /categories
  # POST /categories.xml
  def create
    @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        flash[:notice] = 'Category was successfully created.'
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category, :status => :created, :location => @category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        flash[:notice] = 'Category was successfully updated.'
        format.html { if @category.is_home? then redirect_to root_url else redirect_to @category end }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    @category = Category.find(params[:id])
    id = @category.id
    @category.destroy

    respond_to do |format|
      format.html { redirect_to(categories_url) }
      format.js { render :js => "$('li#category_#{id}').remove();" }
      format.xml  { head :ok }
    end
  end
  
  def order
    params[:category].each_with_index do |id, position|
     Category.update(id, {:position => position+1})
    end
    render :text => params.inspect
  end
end
