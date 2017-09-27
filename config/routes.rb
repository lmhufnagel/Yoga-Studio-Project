Rails.application.routes.draw do
  resources :sign_ups
  resources :students
  resources :teachers
  resources :practices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
