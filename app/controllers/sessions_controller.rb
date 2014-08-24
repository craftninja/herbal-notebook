class SessionsController < ApplicationController

  def destroy
    session.clear
    flash[:notice] = 'You have successfully logged out'
    redirect_to root_path
  end

end
