Rails.application.routes.draw do
  resources :students
  resources :teachers
  get 'fees/index'

  resources :disciplines
  resources :classrooms
  resources :events
  resources :pay_fees
  resources :pay_others
  devise_for :users
  resources :tasks
  get 'home/index'
  root 'home#index'

end
