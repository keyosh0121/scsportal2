# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :user_approval?

  def authenticate_active_admin_user!
    authenticate_user!
    unless current_user.authority.name == "開発者"
      flash[:alert] = "権限がありません"
      redirect_to root_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name year gender uni section_id authority_id])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name year gender uni section_id authority_id])
  end

  def user_approval?
    if user_signed_in?
      if current_user.authority.name == "未承認"
        redirect_to root_path, alert: "管理者の承認をお待ちください"
      end
    end
  end
end
