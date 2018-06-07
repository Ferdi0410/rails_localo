Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :tours, only: [:index, :show] do
    get 'play', on: :member
    get 'guide', on: :member
    post 'start_tour', on: :member
    delete 'delete_user_tour', on: :member
  end

  # resources :guide, only: :show

  get "pages/profile", to: "pages#profile"
  get "guides/:id/", to:"pages#guide", as: 'guide'
  post "set_current_step", to: "steps#set_current"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
