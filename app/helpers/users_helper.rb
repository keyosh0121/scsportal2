# frozen_string_literal: true

module UsersHelper
  def year_in_scs(user)
    current_year = Date.today.year
    current_month = Date.today.month
    user_year = user.year
    if ((current_year - user_year).zero? && current_month >= 4) || (current_year - user_year == 1 && current_month < 4)
      return "1年目"
    elsif (current_year - user_year == 1 && current_month >= 4) || (current_year - user_year == 2 && current_month < 4)
      return "2年目"
    elsif (current_year - user_year == 2 && current_month >= 4) || (current_year - user_year == 3 && current_month < 4)
      return "3年目"
    elsif (current_year - user_year == 3 && current_month >= 4) || (current_year - user_year == 4 && current_month < 4)
      return "4年目"
    end
  end
end
