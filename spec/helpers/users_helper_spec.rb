# frozen_string_literal: true

require "rails_helper"

RSpec.describe UsersHelper, type: :helper do
  describe "converts year to year in scs" do
    it "is senior" do
      user = if Date.today.month >= 4
               build(:user, year: Date.today.year - 3)
             else
               build(:user, year: Date.today.year - 4)
             end
      expect(helper.year_in_scs(user)).to eq("4年目")
    end

    it "is junior" do
      user = if Date.today.month >= 4
               build(:user, year: Date.today.year - 2)
             else
               build(:user, year: Date.today.year - 3)
             end
      expect(helper.year_in_scs(user)).to eq("3年目")
    end

    it "is sophomore" do
      user = if Date.today.month >= 4
               build(:user, year: Date.today.year - 1)
             else
               build(:user, year: Date.today.year - 2)
             end
      expect(helper.year_in_scs(user)).to eq("2年目")
    end

    it "is freshman" do
      user = if Date.today.month >= 4
               build(:user, year: Date.today.year)
             else
               build(:user, year: Date.today.year - 1)
             end
      expect(helper.year_in_scs(user)).to eq("1年目")
    end
  end
end
