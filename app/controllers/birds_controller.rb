class BirdsController < ApplicationController

    def index
        birds = Bird.all
        render json: birds
    end

    def show 
        onebird = Bird.find_by(id: params[:id])
        if onebird
        render json: onebird 
        else 
        render json: { error: "bird not found" }, status: 404
        end
    end


end
