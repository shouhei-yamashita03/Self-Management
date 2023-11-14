Rails.application.routes.draw do
  devise_scope :user do
    root 'static_pages#top'
  end

  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks"
  }
end
