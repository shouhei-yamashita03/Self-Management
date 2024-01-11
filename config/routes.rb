Rails.application.routes.draw do

  # get 'instructions/index'
  # get 'homes/index'
  resources :instructions, :homes, except: [:new, :show]
  resources :tasks, :healths, :stresss, :reports, except: [:new, :index]
  # get 'tasks/show'
  # get 'healths/show'
  # get 'stresss/show'
  # get 'reports/show'

  devise_scope :user do
    root 'static_pages#top'
  end

  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks"
  }
end
