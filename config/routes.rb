Rails.application.routes.draw do
  namespace :api do
    resources :users, only: %i[index create]
    resource :session, only: %i[create destroy]
  end
end
