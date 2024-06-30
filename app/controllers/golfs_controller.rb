class GolfsController < ApplicationController

  def index

  end

  private

  def set_golf
    @golf = Golf.find(params[:id])
  end
end
