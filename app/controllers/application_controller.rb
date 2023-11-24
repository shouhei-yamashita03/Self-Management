class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # deviseのメールアドレスとパスワードでログインする際遷移先をルートから変える
  protected

  def after_sign_in_path_for(resource)
    menus_index_path
  end
end
