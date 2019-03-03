# frozen_string_literal: true

module BandsHelper
  def gender_nums(band)
    members = band.users
    genders = members.map(&:gender)
    nums = {}
    nums[:male] = 0
    nums[:female] = 0
    genders.each do |gender|
      if gender == "male"
        nums[:male] += 1
      else
        nums[:female] += 1
      end
    end
    nums[:total] = nums[:male] + nums[:female]
    nums
  end

  def band_formation(band)
    nums = gender_nums(band)
    if nums[:male].zero?
      return "girls-band"
    elsif nums[:female].zero?
      return "boys-band"
    elsif nums[:total] == 3
      return "mix-3"
    elsif nums[:total] == 4
      return "mix-4"
    elsif nums[:total] == 5
      return "mix-5"
    elsif nums[:total] == 6
      return "mix-6"
    elsif nums[:total] == 7
      return "mix-7"
    end
  end

  def user_band_member?(band, user)
    band.users.each do |member|
      return true if user == member
    end
    false
  end
end
