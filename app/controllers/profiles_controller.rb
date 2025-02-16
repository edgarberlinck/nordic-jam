class ProfilesController < ApplicationController
  def show
    user = Current.user
    @profile = Profile.find_by(user: user)
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = Current.user
    if @profile.save
      redirect_to profiles_path(@profile)
    else
      render :new
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:full_name, :address, :city, :state, :zip, :bio)
  end
end
