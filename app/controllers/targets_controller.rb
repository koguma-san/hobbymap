class TargetsController < ApplicationController
  before_action :authenticate_user!

  def new
    @target = Target.new
  end

  def create
    @target = Target.new(target_params)
    @target.user = current_user
    if @target.save
      redirect_to golfs_path
    else
      render :new
    end
  end

  private

  def target_params
    params.require(:target).permit(:target_score, :deadline)
  end
end
