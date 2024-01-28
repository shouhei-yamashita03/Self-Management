class ApplicationController < ActionController::Base
  # deviseコントローラーにストロングパラメータを追加する          
  before_action :configure_permitted_parameters, if: :devise_controller?
  # CSRF対策
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  # deviseのメールアドレスとパスワードでログインする際遷移先をルートから変える
  protected

  def configure_permitted_parameters
    # ユーザー編集時にnameとemailのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email])
  end

  def after_sign_in_path_for(resource)
    homes_path
  end
end
