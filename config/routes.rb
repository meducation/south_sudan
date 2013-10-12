SouthSudan::Application.routes.draw do

  resources :syllabus_items, only: [:index, :show]
  resources :tutorials, only: [:show]

  namespace :tutorial_builder do
    resources :tutorials, except: [:index] do
      resources :slides
    end
  end

  devise_for :users
  root :to => "syllabus_items#index"
end
