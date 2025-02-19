class MusicalStylesController < ApplicationController
  def index
    @profile = Profile.find(params[:profile_id])
    @styles = Style.all
  end

  def show
    @profile = Profile.find(params[:profile_id])
  end

  def update
    @profile = Profile.find(params[:profile_id])
    @profile.styles = Style.find(params[:profile][:style_ids])
    redirect_to @profile
  end

  private

  def style_params
    params.require(:profile).permit(:style_ids)
  end
end
