class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # deviseのメールアドレスとパスワードでログインする際遷移先をルートから変える
  protected

  def after_sign_in_path_for(resource)
    homes_path
  end
end
