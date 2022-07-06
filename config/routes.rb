Rails.application.routes.draw do
  namespace :api do
    resources :users, only: %i[index create update], format: "json"
    resources :skills, only: %i[show create update destroy], format: "json"
    resources :skill_types, only: %i[show], format: "json"
    resource :session, only: %i[create destroy], format: "json"
  end
end
