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
    @gig = Gig.create(gig_params(:name, :location, :city_id, :leader_id, :start_time))
    @gig.date = gig_date
    @gig.save
    redirect_to gig_path(@gig)
  end

  def edit
    @gig = Gig.find(params[:id])
    @users = User.all
    @cities = City.all
    if params[:search]
      @city = City.find(params[:id])
      @musicians = @city.search_city_by_instrument(params[:search])
      # byebug
      render :edit
    end

  end



  def update
    @gig = Gig.find(params[:id])
    @gig.update(gig_params(:name, :location, :city_id, :leader_id, :start_time, musician_ids: []))
    @gig.save
    redirect_to gig_path(@gig)
  end

  private

  def gig_params(*args)
    params.require(:gig).permit(*args)
  end

end
