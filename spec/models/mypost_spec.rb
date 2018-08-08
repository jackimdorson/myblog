require 'rails_helper'

RSpec.describe Mypost, type: :model do
  let(:mypost) { FactoryBot.build(:mypost) }

  subject { mypost }

  describe 'check factory' do
    it { is_expected.to be_valid }
  end

  describe 'check validation-1' do
    context '「タイトル」が空欄の場合' do
      let(:mypost) { build :mypost, title: '' }
      it { is_expected.to be_invalid }
    end

    context '「内容」が空欄の場合' do
      let(:mypost) { build :mypost, content: '' }
      it { is_expected.to be_invalid }
    end
  end

  describe 'check validation-2' do
    context '「価格」が空欄の場合' do
      let(:mypost) { build :mypost, price: '' }
      it { is_expected.to be_invalid }
    end

    context '「価格」が文字の場合' do
      let(:mypost) { build :mypost, price: 'おはよう'}
      it { is_expected.to be_invalid}
    end
  end

  describe 'check validation-3' do
    context '「内容」が[4文字以下]の場合' do
      let(:mypost) { build :mypost, content: 'a'*4 }
      it { is_expected.to be_invalid}
    end

    context '「内容」が[301文字以上]の場合' do
      let(:mypost) { build :mypost, content: 'a'*301 }
      it { is_expected.to be_invalid}
    end

    context '「内容」が[300文字以下]の場合' do
      let(:mypost) { build :mypost, content: 'a'*300}
      it { is_expected.to be_valid}
    end
  end

  describe 'check validation-4' do
    context '「ジャンルID」が[4以上]の場合' do
      let(:mypost) { build :mypost, content: 4 }
      it { is_expected.to be_invalid}
    end
  end

end


