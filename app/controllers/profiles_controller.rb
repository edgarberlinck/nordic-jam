class ProfilesController < ApplicationController
  def show
    user = Current.user
    @profile = Profile.find_by(user: user)
  end

  def new
    @profile = Profile.new
    @instruments = Instrument.all
    @styles = Style.all
    @influences = Influence.all
  end

  def edit
    @profile = Profile.find_by(user: Current.user)
    @instruments = Instrument.all
    @styles = Style.all
    @influences = Influence.all
  end

  def update
    @profile = Profile.find_by(user: Current.user)
    @profile.influences = Influence.find(params[:profile][:influence_ids])
    @profile.styles = Style.find(params[:profile][:style_ids])
    @profile.instruments = Instrument.find(params[:profile][:instrument_ids])

    if @profile.update(profile_params)
      redirect_to profile_path(@profile)
    else
      @instruments = Instrument.all
      @styles = Style.all
      @influences = Influence.all
      render :edit
    end
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.instruments = Instrument.find(params[:profile][:instrument_ids])
    @profile.styles = Style.find(params[:profile][:style_ids])
    @profile.influences = Influence.find(params[:profile][:influence_ids])
    @profile.user = Current.user
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def index
    @profile = Profile.find_by(user: Current.user)
    if @profile
      redirect_to profile_path(@profile)
    else
      redirect_to new_profile_path
    end
  end

  private

  def profile_params
    params.require(:profile).permit(
      :full_name,
      :address,
      :city,
      :state,
      :zip,
      :bio,
      instrument_ids: [],
      style_ids: [],
      influence_ids: []
    )
  end
end
