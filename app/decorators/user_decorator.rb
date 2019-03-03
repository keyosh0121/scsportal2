class UserDecorator < Draper::Decorator
  delegate_all

  # SCS何年目
  def year_in_scs
    year = if Date.today.month >= 4
             Date.today.year - object.year + 1
           else
             Date.today.year - object.year
           end
    "#{year}年目"
  end
end
