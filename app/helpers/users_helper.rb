module UsersHelper

  def year_in_scs(user)
    current_year = Date.today.year
    current_month = Date.today.month
    user_year = user.user_year

    if 4 <= current_month
      if current_year - user_year == 0
        return "1年目"
      elsif current_year - user_year == 1
        return "2年目"
      elsif current_year - user_year == 2
        return "3年目"
      elsif current_year - user_year == 3
        return "4年目"
      end
    else
      if current_year - user_year == 1
        return "1年目"
      elsif current_year - user_year == 2
        return "2年目"
      elsif current_year - user_year == 3
        return "3年目"
      elsif current_year - user_year == 4
        return "4年目"
      end
    end
  end

end
