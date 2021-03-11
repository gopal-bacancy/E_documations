Rails.application.routes.draw do
  resources :e_mains
  resources :edu_docs
  resources :gov_docs
  devise_for :users


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
