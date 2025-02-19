class ProfilesController < ApplicationController
  def show
    user = Current.user
    @profile = Profile.find_by(user: user)
  end

  def new
    @profile = Profile.new
  end

  def edit
    @profile = Profile.find_by(user: Current.user)
  end

  def update
    @profile = Profile.find_by(user: Current.user)

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
      :avatar
    )
  end
end
