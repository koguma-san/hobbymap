class GolfsController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  private

  def set_golf
    @golf = Golf.find(params[:id])
  end
end
