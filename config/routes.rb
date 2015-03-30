Rails.application.routes.draw do
  resources :comments, only: [:index] do
  end
end
