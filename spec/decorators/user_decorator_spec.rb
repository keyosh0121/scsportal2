require "rails_helper"

RSpec.describe UserDecorator do
  describe "converts year to year in scs" do
    it "is senior" do
      user = if Date.today.month >= 4
               build(:user, year: Date.today.year - 3).decorate
             else
               build(:user, year: Date.today.year - 4).decorate
             end
      expect(user.year_in_scs).to eq("4年目")
    end

    it "is junior" do
      user = if Date.today.month >= 4
               build(:user, year: Date.today.year - 2).decorate
             else
               build(:user, year: Date.today.year - 3).decorate
             end
      expect(user.year_in_scs).to eq("3年目")
    end

    it "is sophomore" do
      user = if Date.today.month >= 4
               build(:user, year: Date.today.year - 1).decorate
             else
               build(:user, year: Date.today.year - 2).decorate
             end
      expect(user.year_in_scs).to eq("2年目")
    end

    it "is freshman" do
      user = if Date.today.month >= 4
               build(:user, year: Date.today.year).decorate
             else
               build(:user, year: Date.today.year - 1).decorate
             end
      expect(user.year_in_scs).to eq("1年目")
    end
  end
end
