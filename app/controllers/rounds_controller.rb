class RoundsController < ApplicationController
  before_action :authenticate_user!

  def new
    @round = Round.new
    score = @round.build_score
    18.times { score.score_details.build }
  end

  def create
    @round = Round.new(round_params)
    @round.user = current_user
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
    params.require(:round).permit(:course, :round_memo, :round_date, score_attributes: [score_details_attributes: [:hole_number, :strokes, :putts, :comments]])
  end
end
