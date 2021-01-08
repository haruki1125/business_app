require 'rails_helper'
describe Note do
  before do
    @note = FactoryBot.build(:note)
  end

  describe 'ノート作成' do
    context 'ノート作成がうまくいくとき' do
      it "必要なカラムが存在すれば保存できる" do
        expect(@note).to be_valid
      end
      it "memomemo,tyusyo,tennyouが空でも登録できる" do
        @note.memomemo = nil
        @note.tyusyo = nil
        @note.tennyou = nil
        expect(@note).to be_valid
      end
    end
    context 'ノート作成がうまくいかない' do
      it 'factが空だと作成不可なこと' do
        @note.fact = nil
        @note.valid?
        expect(@note.errors.full_messages).to include("Fact can't be blank")
      end
    end
  end
end