# frozen_string_literal: true

class TemporalBandsController < ApplicationController
  before_action :set_temporal_band, only: %i[edit update show]

  def new
    @temporal_band = RegularBand.new
  end

  def create
    @temporal_band = new_temporal_band(temporal_band_params)
    if @temporal_band.save
      @temporal_band_members = new_members(temporal_band_params, @temporal_band)
      success = @temporal_band_members.map(&:save)
      if success.all?
        redirect_to root_path, notice: "バンドを作成しました"
      else
        @temporal_band_members.map(&:delete)
        render :new, notice: "バンドメンバーを登録できませんでした"
      end
    else
      render :new, notice: "バンドメンバーを登録できませんでした"
    end
  end

  def show; end

  def edit; end

  def update; end

  private

  def temporal_band_params
    params.require(:temporal_band).permit(
      :name,
      :description
    ).merge(params.require(:band).permit(
              :master_id,
              members: %i[
                user_id
                mic_number
              ]
            ))
  end

  def new_temporal_band(params)
    band = RegularBand.new(
      type: "TemporalBand",
      name: params[:name],
      description: params[:description],
      master_id: params[:master_id]
    )
    band
  end

  def new_members(params, band)
    band_members = []
    if params[:members].present?
      params[:members].map do |member|
        raise "error" if member[:user_id].nil?
        raise "error" if member[:mic_number].nil?

        band_member = BandMember.new(
          user_id: member[:user_id],
          band_id: band.id,
          mic_number: member[:mic_number]
        )
        band_members.push(band_member)
      end
    end
    band_members
  end

  def set_temporal_band
    @temporal_band = RegularBand.find(params[:id])
  end
end
