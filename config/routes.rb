Rails.application.routes.draw do

  root :to => "questions#index"

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :questions do
    resources :answers
  end

end
