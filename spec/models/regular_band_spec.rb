# frozen_string_literal: true

# == Schema Information
#
# Table name: bands
#
#  id            :bigint(8)        not null, primary key
#  description   :text
#  name          :string           not null
#  registeration :boolean          not null
#  type          :string
#  web_url       :string
#  year          :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  master_id     :bigint(8)        not null
#  pa_id         :bigint(8)        not null
#
# Indexes
#
#  index_bands_on_master_id  (master_id)
#  index_bands_on_pa_id      (pa_id)
#
# Foreign Keys
#
#  fk_rails_...  (master_id => users.id)
#  fk_rails_...  (pa_id => users.id)
#


require "rails_helper"

RSpec.describe RegularBand, type: :model do
  describe "#create_regular_band" do
    it "is valid with a name, year, type, registeration, master, pa" do
      band = build(:regular_band)
      expect(band).to be_valid
    end

    it "is invalid without a name" do
      band = build(:regular_band, name: nil)
      band.valid?
      expect(band.errors[:name]).to include("を入力してください")
    end

    it "is invalid without year" do
      band = build(:regular_band, year: nil)
      band.valid?
      expect(band.errors[:year]).to include("を入力してください")
    end

    it "is invalid without type" do
      band = build(:regular_band, type: nil)
      band.valid?
      expect(band.errors[:type]).to include("を入力してください")
    end

    it "is invalid if wrong type" do
      band = build(:regular_band, type: "TemporalBand")
      band.valid?
      expect(band.errors[:type]).to include("は正規バンドでなければいけません")
    end

    it "is invalid without a description" do
      band = build(:regular_band, description: nil)
      band.valid?
      expect(band.errors[:description]).to include("を入力してください")
    end

    it "is invalid without a master" do
      band = build(:regular_band, master: nil)
      band.valid?
      expect(band.errors[:master]).to include("を入力してください")
    end

    it "is invalid without a pa" do
      band = build(:regular_band, pa: nil)
      band.valid?
      expect(band.errors[:pa]).to include("を入力してください")
    end
  end
end
