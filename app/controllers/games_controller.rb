class GamesController < ApplicationController
   def index
        gamer= Gamer.find(params[:gamer_id])
        misions = gamer.games
        render json: misions, status: :ok
    end
    def create
        user = Game.create(user_params)
        render json: user, status: :ok
    end
    def user_params
        params.permit(:usuario, :puntaje, :avatar_id)
    end
end
