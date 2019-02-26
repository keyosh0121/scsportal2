require 'rails_helper'

RSpec.describe UsersHelper, type: :helper do
  describe "converts year to year in scs" do
    it "is senior" do
      current_year = Date.today.year
      current_month = Date.today.month
      if 4 <= current_month
        user = build(:user, year: Date.today.year - 3)
        expect(helper.year_in_scs(user)).to eq("4年目")
      else
        user = build(:user, year: Date.today.year - 4)
        expect(helper.year_in_scs(user)).to eq("4年目")
      end
    end

    it "is junior" do
      current_year = Date.today.year
      current_month = Date.today.month
      if 4 <= current_month
        user = build(:user, year: Date.today.year - 2)
        expect(helper.year_in_scs(user)).to eq("3年目")
      else
        user = build(:user, year: Date.today.year - 3)
        expect(helper.year_in_scs(user)).to eq("3年目")
      end
    end

    it "is sophomore" do
      current_year = Date.today.year
      current_month = Date.today.month
      if 4 <= current_month
        user = build(:user, year: Date.today.year - 1)
        expect(helper.year_in_scs(user)).to eq("2年目")
      else
        user = build(:user, year: Date.today.year - 2)
        expect(helper.year_in_scs(user)).to eq("2年目")
      end
    end

    it "is freshman" do
      current_year = Date.today.year
      current_month = Date.today.month
      if 4 <= current_month
        user = build(:user, year: Date.today.year)
        expect(helper.year_in_scs(user)).to eq("1年目")
      else
        user = build(:user, year: Date.today.year - 1)
        expect(helper.year_in_scs(user)).to eq("1年目")
      end
    end
  end
end
