# frozen_string_literal: true

# きょうすけ担当
class BandsController < ApplicationController
  # バンド一覧画面
  def index
    @regular_bands = RegularBand.includes(:users).all
    @temporal_bands = TemporalBand.includes(:users).all
  end

  def destroy; end
end
