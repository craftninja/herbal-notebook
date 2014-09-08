class PropertiesController < ApplicationController

  def show
    @property = Property.find(params[:id])
  end

  def find_property
    redirect_to property_path(params[:property][:name])
  end

end
