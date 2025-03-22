class JamsController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]
  def index
    @jams = ProfileCreatedJam.all
  end

  def new
    @profile = Profile.find_by(user: Current.user)
    @jam = ProfileCreatedJam.new
  end

  def show
    @jam = ProfileCreatedJam.find(params[:id])
  end

  def edit
    @jam = ProfileCreatedJam.find(params[:id])
  end

  def create
    profile = Profile.find_by(user: Current.user)
    @jam = ProfileCreatedJam.new(jam_params)
    @jam.profile = profile

    Rails.logger.info("jam: #{@jam.inspect}")
    if @jam.save
      redirect_to jam_path(@jam)
    else
      render :new
    end
  end

  private

  def jam_params
    params.require(:profile_created_jam).permit(:title, :description, :address, :country, :city)
  end
end
