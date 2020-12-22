Rails.application.routes.draw do
  devise_for :owners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  resources :pets, only: [:index, :show, :edit, :update]

end
