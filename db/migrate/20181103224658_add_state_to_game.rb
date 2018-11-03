class AddStateToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :state, :boolean
  end
end
