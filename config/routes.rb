Rails.application.routes.draw do
  resources :students, except: [:new, :edit, :update]
  resources :cohorts, except: [:new, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
