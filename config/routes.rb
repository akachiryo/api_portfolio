Rails.application.routes.draw do
  namespace :api do
    resources :users, only: %i[index create update]
    resources :skills, only: %i[show create update destroy]
    resources :skill_types, only: %i[show]
    resource :session, only: %i[create destroy], format: "json"
  end
end
