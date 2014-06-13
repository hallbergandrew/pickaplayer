class DashboardController < ApplicationController
 def index
  @teams = Team.all
  @sports = Sport.all
  # @sports_teams = Team.where(sport_id: sport.id)
  @players = Player.all

 end

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
