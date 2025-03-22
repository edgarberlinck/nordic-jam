class BandsController < ApplicationController
  def index
    @bands = ProfileCreatedBand.all
  end

  def show
    @band = ProfileCreatedBand.find(params[:id])
  end
end
