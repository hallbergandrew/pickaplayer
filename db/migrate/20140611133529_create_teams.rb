class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.name
      t.timestamps
    end
  end
end
