class Api::V1::GamesController < ApplicationController


#render all games
  def index
    @games = Game.all
    render json: @games
  end

#create new game instance
  def create
    @new_game = Game.create(game_params)
    render json: @new_game

  end

  private

  def game_params
    params.permit(:name, :score, :user_id, :hit_percentage)
  end

  def find_game
    @game = Game.find(params[:id])
  end




end
