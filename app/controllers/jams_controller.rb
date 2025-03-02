class JamsController < ApplicationController
  def index
    @jams = ProfileCreatedJam.all
  end

  def new
    @jam = ProfileCreatedJam.new
  end

  def show
    @jam = ProfileCreatedJam.find(params[:id])
  end

  def edit
    @jam = ProfileCreatedJam.find(params[:id])
  end

  def create
    @jam = ProfileCreatedJam.new(jam_params)
    @jam.save
    redirect_to @jam
  end

  private

  def jam_params
    params.require(:profile_created_jam).permit(:description, :address, :country, :city, :date)
  end
end
