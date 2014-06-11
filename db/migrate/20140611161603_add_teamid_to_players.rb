class AddTeamidToPlayers < ActiveRecord::Migration
  def change
  end
  add_column :players, :team_id, :integer
end
