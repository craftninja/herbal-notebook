class HerbsController <ApplicationController

  def index

  end

  def find_herb
    if params[:plant][:common_name] != ''
      redirect_to herb_path(params[:plant][:common_name])
    else
      redirect_to herbs_path
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end

end
