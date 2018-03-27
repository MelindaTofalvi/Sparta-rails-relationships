Rails.application.routes.draw do
  devise_for :users
  resources :teachers
  resources :lessons
  resources :students
  resources :users, only: [:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "lessons#index"

  get "/lessons" , to: "lessons#index"
  get "/teachers" , to: "teachers#index"
  get "/students" , to: "students#index"

  get "/users/sign_out", to: "sessions#destroy"
end
