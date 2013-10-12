SouthSudan::Application.routes.draw do
  resources :syllabus_items

  devise_for :users
  root :to => "syllabus_items#index"
end
