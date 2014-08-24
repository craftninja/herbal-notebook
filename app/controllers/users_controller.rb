class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_parameters)
    if @user.save
      session[:current_user_id] = @user.id
      flash[:notice] = 'Your registration was successful!'
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show

  end

  private

  def allowed_parameters
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
