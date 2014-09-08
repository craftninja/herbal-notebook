class PreparationsController < ApplicationController

  def show
    @preparation = Preparation.find(params[:id])
  end

  def find_preparation
    redirect_to preparation_path(params[:preparation][:name])
  end

end
