class Api::V1::HighscoresController < ApplicationController

    def index
        leaders = Highscore.all
        render json: leaders, only: [:username, :score]
    end

    def show
        leader = Highscore.find(params[:id])
        render json: leader, only: [:username, :score]
    end

    def new
        leader = Highscore.new()
    end

    def create
        leader = Highscore.create(params[:highscore])
        render json: leader, status: 200
    end

    def delete
        leader = Highscore.find(params[:id])
        leader.delete
        render json: leader
    end

    private

    def user_params
        params.require(:highscore).permit(:username, :score)
    end

    
end
