Rails.application.routes.draw do
  root "boards#top"
  resources :boards
end
