Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'lists/new'
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
