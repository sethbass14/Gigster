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

    # @gig.update(gig_params(:name, :location, :city_id, :leader_id, :start_time))
    # #turn id to a string. not completely updating musician_ids array.
    # if params[:gig][:musician_ids].length > 1
    #   params[:gig][:musician_ids].each do |id|
    #     if id != ""
    #       @gig.musician_ids << id.to_i
    #     end
    #     byebug
    #   end
    # end
      # @gig.save
    # # redirect_to :show
    #
  end

  private

  def gig_params(*args)
    params.require(:gig).permit(*args)
  end

end
