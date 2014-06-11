class AddCityStateZipcodeToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :city, :string
    add_column :teams, :state, :string
    add_column :teams, :zipcode, :string
  end
end
