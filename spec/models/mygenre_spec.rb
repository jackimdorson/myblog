require 'rails_helper'

RSpec.describe Mygenre, type: :model do
  let(:mygenre) { create :mygenre }
  
  describe 'check validation-1' do
    context '「名前」が空欄の場合' do
      let(:mypost) { build :mypost, name: '' }
      it { is_expected.to be_invalid }
    end

    context '「メモ」が空欄の場合' do
      let(:mypost) { build :mypost, memo: '' }
      it { is_expected.to be_invalid }
    end
  end

end
