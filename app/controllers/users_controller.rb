class UsersController < ApplicationController
skip_before_action :authorized, only: [:new, :create]
  def new
    @user = User.new
    @instruments = Instrument.all
    @cities = City.all
  end

  def create
    instrument_ids = params[:user][:instrument_ids]
    @user = User.new(user_params(:first_name, :last_name, :age, :bio, :city_id, :username, :password, :password_confirmation))

    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      instrument_ids.each do |id|
        if !id.empty?
          instr = Instrument.find(id)
          @user.instruments << instr
        end
      end
      @user.save
      redirect_to user_path(@user)
    else
      @instruments = Instrument.all
      @cities = City.all
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end


  def edit
    @user = User.find(params[:id])
    if @user == current_user
      @instruments = Instrument.all
      @cities = City.all
    else
      flash[:message] = "You are not authorized to view this page!"
      redirect_to user_path(session[:user_id])
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params(:first_name, :last_name, :bio, :age, :city_id, instrument_ids: []))
    redirect_to user_path(@user)
  end

  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end

end
