Rails.application.routes.draw do
  root to: "comments#index"
  resources :comments do
  end
end
