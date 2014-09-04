class PreparationsController < ApplicationController

  def show
    @preparation = Preparation.find(params[:id])
  end

end
