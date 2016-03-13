Rails.application.routes.draw do
  #resources :company_cards
  #resources :company_cards
  #resources :company_cards
  #resources :company_cards
  #resources :cards
  namespace :api do
    resources :company_cards do
      resources :company_cards, only: [:create, :update, :destroy]
    end
  end
end
