class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :gamer, foreign_key: true
      t.references :mision, foreign_key: true
      t.integer :puntaje_mision
      t.string :tiempo


      t.timestamps
    end
  end
end
