Rails.application.routes.draw do
  resources :schools do
    resources :teachers do
      resources :students
    end
  end

  root 'schools#index'
end
