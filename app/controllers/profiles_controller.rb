class ProfilesController < ApplicationController
  def show
    user = Current.user
    current_profile = Profile.find_by(user: user)
    if current_profile.nil?
      redirect_to new_profile_path
    end

    @is_owner = current_profile.present? && current_profile.id.present? && current_profile.id == params[:id].to_i
    @profile = Profile.find_by(id: params[:id])
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
      if params[:profile][:instrument_ids].present?
        @profile.instruments = Instrument.find(params[:profile][:instrument_ids])
      end
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
      if params[:profile][:instrument_ids].present?
        @profile.instruments = Instrument.find(params[:profile][:instrument_ids])
      end
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
      :date_of_birth,
      :gender,
      :country,
      :city,
      :bio,
      :avatar,
      instrument_ids: [],
      style_ids: [],
      influence_ids: []
    )
  end
end
