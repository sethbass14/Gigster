class UsersController < ApplicationController

  def new
    @user = User.new
    @instruments = Instrument.all
    @cities = City.all
  end

  def create
    @user = User.create(user_params(:first_name, :last_name, :age, :bio, instruments_id: [], :city_id))
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params(:first_name, :last_name, :bio, :age))
    redirect_to user_path(@user)
  end

  private
  def user_params(*args)
    params.require(:user).permit(*args)
  end
end
