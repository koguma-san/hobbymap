class RoundsController < ApplicationController
  def new
    @round = Round.new
  end

  def create
    @round = current_user.rounds.new(round_params)
    if @round.save
      redirect_to rounds_path, notice: 'スコアが登録されました。'
    else
      render :new
    end
  end

  def index
    @rounds = current_user.rounds
  end

  def show
    @round = Round.find(params[:id])
  end

  private

  def round_params
    params.require(:round).permit(:course, :round_memo, :round_date)
  end
end
