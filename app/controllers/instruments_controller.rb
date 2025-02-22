class InstrumentsController < ApplicationController
  def index
    @profile = Profile.find(params[:profile_id])

    @string_instruments = Instrument.where(category: "string")
    @woodwind_instruments = Instrument.where(category: "woodwind")
    @brass_instruments = Instrument.where(category: "brass")
    @percussion_instruments = Instrument.where(category: "percussion")
    @keyboard_instruments = Instrument.where(category: "keyboard")
    @vocal_instruments = Instrument.where(category: "vocal")
  end

  def edit
    @string_instruments = Instrument.where(category: "string")
    @woodwind_instruments = Instrument.where(category: "woodwind")
    @brass_instruments = Instrument.where(category: "brass")
    @percussion_instruments = Instrument.where(category: "percussion")
    @keyboard_instruments = Instrument.where(category: "keyboard")
    @vocal_instruments = Instrument.where(category: "vocal")
  end

  def show
    @profile = Profile.find(params[:profile_id])
  end

  def update
    @profile = Profile.find(params[:profile_id])
    @profile.instruments = Instrument.find(params[:profile][:instrument_ids])

    if @profile.save
      redirect_to @profile
    else
      render :edit
    end
  end

  private

  def instrument_params
    params.require(:profile).permit(:instrument_ids)
  end
end
