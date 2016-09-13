Rails.application.routes.draw do

  get '/' => "questions#index"

  resources :users

end
