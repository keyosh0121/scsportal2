require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    it "is valid with a name, email, password, password_confirmation, year, uni, gender, authority_id, section_id" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "is invalid without a name" do
      user = build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it "is invalid without an email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "is invalid without year" do
      user = build(:user, year: nil)
      user.valid?
      expect(user.errors[:year]).to include("を入力してください")
    end

    it "is invalid without an uni" do
      user = build(:user, uni: nil)
      user.valid?
      expect(user.errors[:uni]).to include("を入力してください")
    end

    it "is invalid without gender" do
      user = build(:user, gender: nil)
      user.valid?
      expect(user.errors[:gender]).to include("を入力してください")
    end

    it "is invalid without an authority" do
      user = build(:user, authority: nil)
      user.valid?
      expect(user.errors[:authority]).to include("を入力してください")
    end

    it "is invalid without a section" do
      user = build(:user, section: nil)
      user.valid?
      expect(user.errors[:section]).to include("を入力してください")
    end

    it "is invalid with password if no password_confirmation" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end

    it "is valid with password longer than 5 letters" do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid with password shorter than 6 letters" do
      user = build(:user, password: "00000", password_confirmation: "00000")
      user.valid?
      expect(user.errors[:password][0]).to include("は6文字以上で入力してください")
    end
  end
end
