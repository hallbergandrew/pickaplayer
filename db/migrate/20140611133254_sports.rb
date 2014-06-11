class Sports < ActiveRecord::Migration
  def change
    create_table(:sports) do |t|
      ## Database authenticatable
      t.string :name
    end
  end
end
