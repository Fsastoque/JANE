class CreateGamers < ActiveRecord::Migration[5.2]
  def change
    create_table :gamers do |t|
      t.string :usuario
      t.integer :puntaje
      t.references :avatar, foreign_key: true

      t.timestamps
    end
  end
end
