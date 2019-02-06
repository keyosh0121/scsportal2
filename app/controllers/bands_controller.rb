# きょうすけ担当
class BandsController < ApplicationController
  # バンド一覧画面
  def index
  end

  # 申請フォームは後から他のやつを使い回すので大丈夫です。
  def new
    @band = Band.new
  end

  def create
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
end
