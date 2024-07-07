class GolfsController < ApplicationController
  before_action :authenticate_user!

  def index
    @target = current_user.targets.last
  end

  private

  def set_golf
    @golf = Golf.find(params[:id])
  end
end
