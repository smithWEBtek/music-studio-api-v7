Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root 'students#index'  
  get 'students/:id/resources', to: 'students#resources'
  resources :teachers
  resources :students
  resources :lessons
  resources :resources
  resources :lesson_resources
end
