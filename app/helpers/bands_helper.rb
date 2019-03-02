# frozen_string_literal: true

module BandsHelper
  def user_band_member?(band, user)
    band.users.each do |member|
      return true if user == member
    end
    false
  end
end
