Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :tours, only: [:index, :show] do
    get 'play', on: :member
    post 'start_tour', on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
