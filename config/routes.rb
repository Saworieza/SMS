Rails.application.routes.draw do
  resources :priorities
  resources :classrooms
  resources :streams
  resources :departments
  resources :exams
  get 'library/index'

  resources :dormitories
  resources :subjects
  resources :library_books
  resources :subjects
  get 'users/index'

  resources :students
  resources :teachers
  get 'fees/index'

  resources :disciplines
  resources :events
  resources :pay_fees
  resources :pay_others
  devise_for :users
  resources :tasks
  get 'home/index'
  root 'home#index'

end
