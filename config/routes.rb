Rails.application.routes.draw do
  resources :resources
  resources :resource_categories
  resources :questions
  resources :question_types
  resources :questionnaires
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#show"
  get "welcome/index"
end
