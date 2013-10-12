SouthSudan::Application.routes.draw do

  resources :tutorials, except: [:index]
  resources :syllabus_items, only: [:index, :show]

  devise_for :users
  root :to => "syllabus_items#index"
end
