class RoomUsagesController < ApplicationController
  # 部屋/会議スペース利用申請一覧画面
  def index
  	@room_usage = RoomUsage.new()
  end

  def new
  end

  def create
  end
end
