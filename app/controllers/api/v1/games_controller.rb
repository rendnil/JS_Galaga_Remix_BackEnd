class Api::V1::GamesController < ApplicationController
  before_action :find_game, only: [:update]


  def index
    @games = Game.all
    render json: @games
  end

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
