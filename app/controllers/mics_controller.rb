# どんさん担当
class MicsController < ApplicationController
  # マイク練一覧画面(マイク練係確認用)
  def index
  	@mics = Mic.where("date >= ?", Date.today).order(date: "ASC", period_id: "ASC")
  end

  # 申請フォームは後から他のやつを使い回すので大丈夫です。
  def new
  end

  def create
  end

  # 自分のマイク練一覧画面
  def show
  	@mics = Mic.where("date >= ?", Date.today).where(band_id: User.find(params[:id]).bands.map(&:id)).order(date: "ASC", period_id: "ASC")
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # 分割順番選択画面
  def order
    @mic = Mic.new(id: 1)
  end
end
