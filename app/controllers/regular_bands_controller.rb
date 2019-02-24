class RegularBandsController < ApplicationController
  before_action :set_regular_band, only: [:edit, :update, :show]

  def new
    @regular_band = RegularBand.new
  end

  def create
    @regular_band = new_regular_band(regular_band_params)
    if @regular_band.save
      @regular_band_members = new_members(regular_band_params, @regular_band)
      success = @regular_band_members.map(&:save)
      if success.all?
        redirect_to root_path, notice: 'バンドを作成しました'
      else
        @regular_band_members.map(&:delete)
        render :new, notice: 'バンドメンバーを登録できませんでした'
      end
    else
      render :new, notice: 'バンドメンバーを登録できませんでした'
    end
  end

  def show
  end

  def edit
  end

  def update
  end


  private
  def regular_band_params
    params.require(:regular_band).permit(
      :type,
      :name,
      :year,
      :description,
      :web_url,
      :master_id,
      :pa_id,
      members: [
        :user_id,
        :mic_number
      ]
      )
  end

  def new_regular_band(params)
    band = RegularBand.new(
      type: params[:type],
      name: params[:name],
      year: params[:year],
      description: params[:description],
      web_url: params[:web_url],
      master_id: params[:master_id],
      pa_id: params[:pa_id],
      registeration: false
      )
    return band
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
          mic_number: member[:mic_number],
          )
        band_members.push(band_member)
      end
    end
    return band_members
  end

  def set_regular_band
    @regular_band =  RegularBand.find(params[:id])
  end

end
