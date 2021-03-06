class GigsController < ApplicationController

  def index
    @gigs = Gig.all
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def new
    @gig = Gig.new
    @users = User.all
    @cities = City.all
  end

  def create
    gig_date = Date.parse(params[:gig][:date])
    if current_user.available(gig_date)
      @gig = Gig.new(gig_params(:name, :location, :city_id, :start_time))
      @gig.leader_id = current_user.id
      @gig.date = gig_date
      @gig.save
      redirect_to gig_path(@gig)
    else
      flash[:message] = "You are already booked on that date!"
      redirect_to new_gig_path
    end
  end

  def edit
    @gig = Gig.find(params[:id])
    if @gig.leader_id == session[:user_id]
      @users = User.all
      @cities = City.all
      if params[:search]
        @city = City.find(@gig.city_id)
        @musicians = @city.search_city_by_instrument(params[:search])
        render :edit
      end
    else
      flash[:message] = "You were not authorized to view that page! Here is your profile page instead!"
      redirect_to user_path(session[:user_id])
    end
  end



  def update
    @gig = Gig.find(params[:id])
    @gig.update(gig_params(:name, :date, :location, :city_id, :leader_id, :start_time, musician_ids: []))

    @gig.save
    redirect_to gig_path(@gig)
  end

  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy
    flash[:message] = "Gig deleted, homie. Bread out the window."
    redirect_to user_path(current_user)

  end

  private

  def gig_params(*args)
    params.require(:gig).permit(*args)
  end

end
