class PropertiesController < ApplicationController

  def show
    @property = Property.find(params[:id])
  end

  def find_property
    if params[:property][:name] != ''
      redirect_to property_path(params[:property][:name])
    else
      redirect_to herbs_path
    end
  end

end
