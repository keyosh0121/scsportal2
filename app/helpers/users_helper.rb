# frozen_string_literal: true

module UsersHelper
  def year_in_scs(user)
    year = if Date.today.month >= 4
             Date.today.year - user.year + 1
           else
             Date.today.year - user.year
           end
    "#{year}年目"
  end
end
