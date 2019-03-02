# frozen_string_literal: true

class UsersController < ApplicationController
  skip_before_action :user_approval?, only: [:show]
  def show; end

  def search
    @users = User.where("name LIKE(?)", "%#{params[:keyword]}%").limit(20)
    respond_to do |format|
      format.html
      format.json
    end
  end
end
