class InstrumentsController < ApplicationController
  def index
    @profile = Profile.find(params[:profile_id])
    @instruments = Instrument.all
  end

  def show
    @profile = Profile.find(params[:profile_id])
  end

  def update
    @profile = Profile.find(params[:profile_id])
    @profile.instruments = Instrument.find(params[:profile][:instrument_ids])
    redirect_to @profile
  end

  private

  def instrument_params
    params.require(:profile).permit(:instrument_ids)
  end
end
