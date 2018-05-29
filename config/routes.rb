Rails.application.routes.draw do
  resources :tours, only: [:index, :show] do
    get 'play', on: :member
  end
  devise_for :users
  root to: 'pages#home'

  namespace :tours do
    resources :arts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
