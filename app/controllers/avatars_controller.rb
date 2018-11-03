class AvatarsController < ApplicationController
def create
        user = Avatar.create(user_params)
        render json: user, status: :ok
    end
    
    def index
        avatars = Avatar.all
        render json: avatars, status: :ok
    end
    private

    def user_params
        params.permit(:nombre, :imagen)
    end
end
