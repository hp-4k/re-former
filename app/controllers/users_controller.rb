class UsersController < ApplicationController
  def new
  end

  def create
    if @user = User.create(user_params)
      redirect_to new_user_path
    else
      render :new
    end
  end
  
  private
    
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
  
end
