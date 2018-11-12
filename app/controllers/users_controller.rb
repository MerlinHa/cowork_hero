class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to mydashboard_path
    else
      render
    end
  end

private

  def user_params
    params.require(:user).permit(:photo)
  end
end
