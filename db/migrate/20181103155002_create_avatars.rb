class CreateAvatars < ActiveRecord::Migration[5.2]
  def change
    create_table :avatars do |t|
      t.string :nombre
      t.string :imagen

      t.timestamps
    end
  end
end
