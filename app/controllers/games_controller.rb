class GamesController < ApplicationController

  def index
    @game = Game.new
  end

  def new
  end

  def create
    @game = Game.create(game_params)
  end

  def show
  end

  def update
    # if @game.update(game_params)
    #   render json: @game
    # else
    #   render json: @game
    # end
  end

  def destroy
  end

  private

  def game_params
    params.require(:game).permit(:winner, :loser)
  end
end
