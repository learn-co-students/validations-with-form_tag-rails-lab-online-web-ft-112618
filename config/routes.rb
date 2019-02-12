Rails.application.routes.draw do
  resources :authors, only: [:new, :create, :show]
  get 'authors/:id/edit', to: 'authors#edit', as: :edit_author
  patch 'authors/:id', to: 'authors#update'
  
  resources :posts, only: [:new, :create, :show]
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  patch 'posts/:id', to: 'posts#update'
end
