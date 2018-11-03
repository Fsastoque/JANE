class CreateMisions < ActiveRecord::Migration[5.2]
  def change
    create_table :misions do |t|
      t.string :nombre
      t.string :imagen
      t.integer :estado
      t.string :tiempo
      t.string :combinacion

      t.timestamps
    end
  end
end
