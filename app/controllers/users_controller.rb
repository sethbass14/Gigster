class UsersController < ApplicationRecord

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params(:first_name, :last_name, :bio, :age))
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params(*args)
    params.require(:user).permit(*args)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params(:first_name, :last_name, :bio, :age))
    redirect_to user_path(@user)
  end
end
