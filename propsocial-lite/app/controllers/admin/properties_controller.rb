class Admin::PropertiesController < AdminController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def show

  end

  def edit

  end

  def create
    @property = Property.new(property_params)

    if @property.save
      redirect_to admin_root_url, notice: 'Property is successfully created!'
    else
      render :new
    end
  end

  def update

  end

  def destroy

  end

  private

  def property_params
    params.require(:property).permit(:name, :price, :description, :size, images: [])
  end
end