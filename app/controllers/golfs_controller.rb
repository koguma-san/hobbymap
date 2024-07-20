class GolfsController < ApplicationController
  before_action :authenticate_user!

  def index
    @target = current_user.targets.last
    @records = current_user.records.order(created_at: :desc)
    @best_round = current_user.rounds.joins(score: :score_details).group('rounds.id').order('SUM(score_details.strokes) ASC').first
  end

  private

  def set_golf
    @golf = Golf.find(params[:id])
  end
end
