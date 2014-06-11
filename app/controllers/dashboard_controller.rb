class DashboardController < ApplicationController
  # before_filter :find_profile

  def show
    # if @profile != nil
    #   @profile = Profile.find(current_user.id)
    # else
    #   @profile = Profile.create({:user_id => current_user.id})
    #   @profile = Profile.find_by(user_id: current_user.id)
    # end
  end

  private

  # def find_profile
  #   @profile = Profile.find_by(user_id: current_user.id)
  # end
end
