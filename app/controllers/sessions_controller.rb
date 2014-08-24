class SessionsController < ApplicationController

  def destroy
    session.clear
    flash[:notice] = 'You have successfully logged out'
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:current_user_id] = @user.id
      flash[:notice] = 'Your login was successful!'
      redirect_to user_path(current_user)
    else
      @user = User.new
      flash.now[:error] = 'Email and/or Password is incorrect.'
      render :new
    end
  end

end
