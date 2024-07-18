class RecordsController < ApplicationController
  before_action :authenticate_user!

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    @record.user = current_user
    if @record.save
      redirect_to golfs_path, notice: '練習メモが登録されました。'
    else
      render :new
    end
  end

  private

  def record_params
    params.require(:record).permit(:record_date, :title, :record_memo)
  end
end