# きょうすけ担当
class BandsController < ApplicationController
  before_action :set_band, only: [:edit, :update]
  # バンド一覧画面
  def index
    @bands = Band.all
  end

  # 申請フォームは後から他のやつを使い回すので大丈夫です。
  def new_regular
    @band = Band.new
  end

  def new_temporal
    @band = Band.new
  end

  def create
    @band = new_band(band_params)
    if @band.save
      @band_members = new_members(band_params, @band)
      success = @band_members.map(&:save)
      if success.all?
        redirect_to root_path, notice: 'バンドを作成しました'
      else
        @band_members.map(&:delete)
        render :new_regular, notice: 'バンドメンバーを登録できませんでした' if @band.type == "RegularBand"
        render :new_temporal, notice: 'バンドメンバーを登録できませんでした' if @band.type == "TemporalBand"
      end
    else
      render :new_regular, notice: 'バンドメンバーを登録できませんでした' if @band.type == "RegularBand"
      render :new_temporal, notice: 'バンドメンバーを登録できませんでした' if @band.type == "TemporalBand"
    end
  end

    # 編集フォームも後から他のやつを使い回すので大丈夫です。
  def edit
  end

  def update
  end

  # バンド詳細画面
  def show
  end

  def destroy
  end

  private
  def band_params
    params.require(:band).permit(
      :type,
      :band_name,
      :band_year,
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

  def new_band(params)
    band = Band.new(
      type: params[:type],
      band_name: params[:band_name],
      band_year: params[:band_year],
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

  def set_band
    @band = Band.find(params[:id])
  end

end
