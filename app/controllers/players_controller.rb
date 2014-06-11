class PlayersController < ApplicationController
  def index
    @sport = Sport.find(params[:sport_id])
    @teams = Team.all

  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      flash[:notice] = "Contact created."
      redirect_to sport_teams_path
    else
      render 'new'
    end
  end

  def show
    @sport = Sport.find(params[:sport_id])
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @sport = Sport.find(params[:sport_id])
    @team = Team.find(params[:id])
    if @team.update(team_params)
      flash[:notice] = "Contact updated."
      redirect_to sport_team_path(@sport.id, @team.id)

    else
      render 'edit'
    end
  end

  def destroy
    @sport = Sport.find(params[:sport_id])
    @team = Team.find(params[:id])
    @team.destroy
    flash[:notice] = "Contact deleted."
    redirect_to sport_teams_path
  end

   private
  def team_params
    params.require(:team).permit(:name, :id, :sport_id, :city, :state, :zipcode, :team_id)
  end
end
