class ServicesController < ApplicationController
  before_filter :permission
  
  def new
    @service = Service.new
  end

  def create
    @service = Service.new(params[:service])

    respond_to do |format|
      if @service.save
        flash[:notice] = 'Service was successfully created.'
        format.html { redirect_to photographer_services_path }
        format.html  {render :xml => @service, :status => :created, :location => @service}
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def destroy
    @service = Service.find(params[:id])
    deleted_service = @service
    @service.destroy

    respond_to do |format|
      format.html { redirect_to(service_url) }
      format.js { render :js => "$('li#service_#{service.id}').remove();$('#service_#{service.type_class}').remove();" }
      format.xml  { head :ok }
    end
  end

  def order
    params[:service].each_with_index do |id, position|
     Service.update(id, {:position => position+1})
    end
    render :text => params.inspect
  end

end
