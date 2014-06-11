class PlayersController < ApplicationController
  def index
    @sport = Sport.find(params[:sport_id])
    @team = Team.find(params[:team_id])
    @players = Player.where(:team_id => @team.id)

  end

  def new
    @team = Team.find(params[:team_id])
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      flash[:notice] = "Contact created."
      redirect_to sport_team_players_path
    else
      render 'new'
    end
  end

  def show
    @team = Team.find(params[:team_id])
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
    @team = Team.find(params[:team_id])
  end

  def update
    @sport = Sport.find(params[:sport_id])
    @team = Team.find(params[:team_id])
    @player = Player.find(params[:id])
    if @player.update(player_params)
      flash[:notice] = "Contact updated."
      redirect_to sport_team_player_path(@sport.id, @team.id, @player.id)

    else
      render 'edit'
    end
  end

  def destroy
    @team = Team.find(params[:team_id])
    @player = Player.find(params[:id])
    @player.destroy
    flash[:notice] = "Contact deleted."
    redirect_to sport_team_players_path
  end

   private
  def player_params
    params.require(:player).permit(:first_name, :last_name, :number, :position, :team_id, :id)
  end
end
