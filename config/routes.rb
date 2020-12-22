Rails.application.routes.draw do
  devise_for :owners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  resources :pets, only: [:index, :show, :edit, :update] do
    resources :relationships, only: [:create, :destroy]
  end
  resources :diaries, only: [:index, :create, :destroy]
  resources :memories
  resources :diary_comments, only: [:create, :destroy]
  resources :diary_favorites, only: [:create, :destroy]

end
