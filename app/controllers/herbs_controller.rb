class HerbsController <ApplicationController

  def index

  end

  def find_herb
    redirect_to herb_path(params[:plant][:common_name])
  end

  def show
    @plant = Plant.find(params[:id])
  end

end
