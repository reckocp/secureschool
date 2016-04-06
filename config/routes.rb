Rails.application.routes.draw do
  resources :schools do
   resources :teachers
   resources :students
   resources :courses
 end

  root 'schools#index'
end
