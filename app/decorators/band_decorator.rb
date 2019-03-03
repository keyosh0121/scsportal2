class BandDecorator < Draper::Decorator
  delegate_all

  # 男女数とその合計値のハッシュ
  def gender_nums
    members = object.users
    nums = {}
    nums[:male] = 0
    nums[:female] = 0
    members.each do |member|
      if member.gender == "male"
        nums[:male] += 1
      else
        nums[:female] += 1
      end
    end
    nums[:total] = nums[:male] + nums[:female]
    nums
  end

  # バンドの構成
  def band_formation
    nums = gender_nums
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
end
