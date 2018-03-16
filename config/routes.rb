Rails.application.routes.draw do
  resources :teachers
  resources :lessons
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "lessons#index"

  get "/lessons" , to: "lessons#index"
  get "/teachers" , to: "teachers#index"
  get "/students" , to: "students#index"
end
