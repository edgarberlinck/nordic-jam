class InfluencesController < ApplicationController
  def index
    @profile = Profile.find(params[:profile_id])
    @influences = Influence.all
  end

  def show
    @profile = Profile.find(params[:profile_id])
    @influences = Influence.all
  end

  def update
    @profile = Profile.find(params[:profile_id])
    @profile.influences = Influence.find(params[:profile][:influence_ids])
    redirect_to @profile
  end

  private

  def influence_params
    params.require(:profile).permit(:influence_ids)
  end
end
