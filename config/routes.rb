Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "omniauth_callbacks"
  }

  get 'users/show', to: 'users#show', as: 'user_show'
  # 他のルーティング設定

  # devise signup時&パスワード変更時のエラー解消
  get "users" => redirect("/users/sign_up")
  get "/users/password" => redirect("/users/password/new")

  resources :instructions, only: [:index]
  resources :homes, only: [:index]
  resources :tasks, :healths, :stresss, :reports, :feedbacks

  devise_scope :user do
    root 'static_pages#top'
  end
end