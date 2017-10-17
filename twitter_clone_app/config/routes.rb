Rails.application.routes.draw do

  root "boards#top"
  resources :boards
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]

  resources :boards, only: [:favorite] do
    collection do
      get :favorite
    end
  end

end
