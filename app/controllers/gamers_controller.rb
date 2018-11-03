class GamersController < ApplicationController
def create
        user = Gamer.create(user_params)
        misiones = Mision.all
        misiones.map{|mision| Game.create(:gamer_id => user.id, :mision_id => mision.id, :state => false, :puntaje_mision => 0, :tiempo => "0")}
        initialGame = user.games.first
        initialGame.state = true
        initialGame.save
        render json: user.games, status: :ok
    end
    
    def index
        gamers = Gamer.all
        render json: gamers, status: :ok
    end
    private

    def user_params
        params.permit(:usuario, :puntaje, :avatar_id)
    end
end
