class Mision < ApplicationRecord
#Relacion muchos a muchos
  has_many :games
  has_many :gamers, through: :games
end
