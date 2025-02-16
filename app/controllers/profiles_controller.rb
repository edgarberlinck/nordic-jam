class ProfilesController < ApplicationController
  allow_unauthenticated_access only: [:new, :create]
  def show
    @profile = current_user.profile

    if @profile.nil?
      @profile = Profile.new
    end
  end

  def new
    @user = User.new
  end

  def create
    if @user.save
      start_new_session_for @user
      redirect_to profile_edit_path
    else
      render :new
    end
  end
end
