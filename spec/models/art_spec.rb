require 'rails_helper'

RSpec.describe Art, type: :model do
  describe 'アート投稿機能' do
    before do
      @art = FactoryBot.build(:art)
    end

    context '投稿できる時' do
      it 'タイトル、画像が添付されていれば投稿できる' do
        expect(@art).to be_valid
      end
    end

    context '投稿できない時' do
      it '画像を1枚つけることが必須であること' do
        @art.images = nil
        @art.valid?
        expect(@art.errors.full_messages).to include("Images は1枚以上10枚以下にしてください")
      end

      it 'タイトルが必須であること' do
        @art.title = ''
        @art.valid?
        expect(@art.errors.full_messages).to include("Title can't be blank")
      end
    end
  end
end
