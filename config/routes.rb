Rails.application.routes.draw do
  resources :showtimes
  resources :credits
  resources :playbills do
    resources :credits
    resources :showtimes
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
