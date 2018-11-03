class Gamer < ApplicationRecord
  belongs_to :avatar
  has_many :games
  has_many :misions, through: :games
end
