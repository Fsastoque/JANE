class MisionsController < ApplicationController
def create
        user = Mision.create(user_params)
        render json: user, status: :ok
    end
    
    def index
#        gamer= Gamer.find(params[:gamer_id])
#        misions = gamer.games
#        render json: misions, status: :ok
    end
    private

    def user_params
        params.permit(:nombre, :imagen, :estado, :tiempo, :combinacion)
    end
end
