module BandsHelper

  def band_formation(band)
    members = band.users
    genders = members.map{|member| member.gender}
    num_male = 0
    num_female = 0
    genders.each do |gender|
      if gender == "male"
        num_male += 1
      else
        num_female += 1
      end
    end

    if num_male == 0
      return "girls-band"
    elsif num_female == 0
      return "boys-band"
    elsif num_female + num_male == 3
      return "mix-3"
    elsif num_female + num_male == 4
      return "mix-4"
    elsif num_female + num_male == 5
      return "mix-5"
    elsif num_female + num_male == 6
      return "mix-6"
    elsif num_female + num_male == 7
      return "mix-7"
    end
  end

  def user_band_member?(band, user)
    band.users.each do |member|
      if user == member
        return true
      end
    end
    return false
  end


end
