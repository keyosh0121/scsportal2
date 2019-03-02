# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           not null
#  encrypted_password     :string           not null
#  gender                 :integer
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  name                   :string           not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  uni                    :string           not null
#  year                   :integer          not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  authority_id           :bigint(8)        not null
#  section_id             :bigint(8)        not null
#
# Indexes
#
#  index_users_on_authority_id          (authority_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_section_id            (section_id)
#
# Foreign Keys
#
#  fk_rails_...  (authority_id => authorities.id)
#  fk_rails_...  (section_id => sections.id)
#

require "rails_helper"

RSpec.describe User, type: :model do
  describe "#create" do
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
      create(:user)
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
