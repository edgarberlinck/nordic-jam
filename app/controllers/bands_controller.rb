class BandsController < ApplicationController
  def index
    @bands = ProfileCreatedBand.all
  end

  def show
    @band = ProfileCreatedBand.find(params[:id])
  end

  def new
    @band = ProfileCreatedBand.new
  end

  def create
    profile = Profile.find_by(user: Current.user)
    @band = ProfileCreatedBand.new(band_params)
    @band.profile = profile
    if @band.save
      redirect_to bands_path, notice: "Band created successfully"
    else
      render :new
    end
  end

  def edit
    @band = ProfileCreatedBand.find(params[:id])
  end

  def update
    @band = ProfileCreatedBand.find(params[:id])
  end

  def destroy
    @band = ProfileCreatedBand.find(params[:id])
  end

  private

  def band_params
    params.require(:profile_created_band).permit(:title, :about)
  end
end
