class UsersController < ApplicationController

  def new
    @user = User.new
    @instruments = Instrument.all
    @cities = City.all
  end

  def create
    instrument_ids = params[:user][:instrument_ids]
    @user = User.create(user_params(:first_name, :last_name, :age, :bio, :city_id))
    instrument_ids.each do |id|
      if !id.empty?
        instr = Instrument.find(id)
        @user.instruments << instr
      end
    end
    @user.save
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end


  def edit
    @user = User.find(params[:id])
    @instruments = Instrument.all
    @cities = City.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params(:first_name, :last_name, :bio, :age, :city_id, instrument_ids: []))
    byebug
    redirect_to user_path(@user)
  end

  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end

end
