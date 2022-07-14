class Admin::PropertiesController < AdminController
  def index
    @properties = Property.order(created_at: :desc).all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    
    if @property.save
      redirect_to admin_root_url, notice: 'Property is successfully created!'
    else
      render :new
    end
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    flash[:notice] = 'Property has been deleted successfully!'
    redirect_to admin_root_path
  end

  private

  def property_params
    params.require(:property).permit(:name, :price, :description, :size, images: [])
  end
end