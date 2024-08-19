class KnittingsController < ApplicationController

  def new
    @knitting = Knitting.new
  end

  def create
    @knitting = Knitting.new(knitting_params)
    if @knitting.save
      redirect_to knittings_path
    else
      render :index
    end
  end

  def index
    @knittings = Knitting.all
    @knitting = Knitting.new
  end

  def show
    @knitting = Knitting.find(params[:id])
  end

  private

  def knitting_params
    params.require(:knitting).permit(:work, :recipe, :yarn, :hook_number, :image)
  end
end
