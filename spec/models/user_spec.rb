require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    it 'nicknameが空では登録できない' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include "Nickname can't be blank"
    end

    it 'emailが空では登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include "Email can't be blank"
    end

    it 'メールアドレスは、@を含む必要があること' do
      @user.email = 'testexample'
      @user.valid?
      expect(@user.errors.full_messages).to include('Email is invalid')
    end

    it 'パスワードは、6文字以上での入力が必須であること' do
      @user.password = 'aaa11'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end

    it 'パスワードは、数字のみのパスワードでは登録できないこと' do
      @user.password = '111111'
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include('Password には英字と数字の両方を含めて設定してください')
    end
  end
end
