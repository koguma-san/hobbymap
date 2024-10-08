class RoundsController < ApplicationController
  before_action :authenticate_user!

  def new
    @round = Round.new
    score = @round.build_score
    18.times do |i|
      score_detail = score.score_details.build
      score_detail.hole_number = i + 1
    end
  end

  def create
    @round = Round.new(round_params)
    @round.user = current_user
    if @round.save
      redirect_to golfs_path
    else
      Rails.logger.debug(@round.errors.full_messages)
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
    params.require(:round).permit(:course, :round_memo, :round_date, score_attributes: [:id, score_details_attributes: [:id, :hole_number, :strokes, :putts, :comments]])
  end
end
