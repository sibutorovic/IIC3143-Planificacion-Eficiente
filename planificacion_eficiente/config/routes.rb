Rails.application.routes.draw do
  resources :shared_plans
  devise_for :users
  root 'static_pages#home'
  get  'static_pages/home'
  get  'static_pages/help'
  get  'static_pages/about'
  resources :unit_plans
  resources :previous_learnings
  resources :plans
  resources :learning_objectives
  resources :attitudes
  resources :feedbacks
  resources :abilities
  devise_for :unit_heads
  devise_for :admins
  devise_for :teachers
  post 'plans/share' =>  'plans#share'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
