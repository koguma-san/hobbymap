require 'rails_helper'

RSpec.describe Target, type: :model do
  before do
    @target = FactoryBot.build(:target)
  end

  describe '目標スコア登録' do
    context '目標スコアが登録できる場合' do
      it 'target_score,deadlineが正しく入力されている' do
        expect(@target).to be_valid
      end
    end

    context '目標スコアが登録できない場合' do
      it 'スコアの入力がされていない時' do
        @target.target_score = nil
        @target.valid?
        expect(@target.errors.full_messages).to include("Target score can't be blank")
      end
      it '期限の入力がされていない時' do
        @target.deadline = nil
        @target.valid?
        expect(@target.errors.full_messages).to include("Deadline can't be blank")
      end
      it 'スコアの数値が30以下の時' do
        @target.target_score = 29
        @target.valid?
        expect(@target.errors.full_messages).to include("Target score must be a half-width number and between 30 and 300")
      end
      it 'スコアの数値が300以上の時' do
        @target.target_score = 301
        @target.valid?
        expect(@target.errors.full_messages).to include("Target score must be a half-width number and between 30 and 300")
      end
      it 'スコアの数値が全角の時' do
        @target.target_score = "１００"
        @target.valid?
        expect(@target.errors.full_messages).to include("Target score must be a half-width number and between 30 and 300")
      end
      it '期限の入力が過去になっている時' do
        @target.deadline = Date.yesterday
        @target.valid?
        expect(@target.errors.full_messages).to include("Deadline must be a future date")
      end
    end
  end
end
