Rails.application.routes.draw do
  devise_for :unit_heads
  devise_for :admins
  devise_for :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
