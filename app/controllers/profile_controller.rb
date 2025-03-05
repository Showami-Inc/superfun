class ProfileController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to edit_profile_path(@profile), notice: "Profile successfully updated."
    else
      render :edit
    end
  end

  def profile_params
    params.require(:profile).permit(:name, :phone)
  end
end
