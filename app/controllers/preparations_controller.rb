class PreparationsController < ApplicationController

  def show
    @preparation = Preparation.find(params[:id])
  end

  def find_preparation
    if params[:preparation][:name] != ''
      redirect_to preparation_path(params[:preparation][:name])
    else
      redirect_to herbs_path
    end
  end

end
