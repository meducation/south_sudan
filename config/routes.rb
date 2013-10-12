SouthSudan::Application.routes.draw do
  devise_for :users
  root :to => "pages#syllabus"
end
