Rails.application.routes.draw do
  root 'demo#index'

  get 'fav/show1'
  get 'fav/show2'
  get 'fav/show3'
  get 'demo/index'
  get 'demo/hello'
  get 'demo/about'
  get 'demo/contact'

  # resourceful routing here
  resources :subjects do
    member do
      # this is required to add the "delete" resourceful route
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/new'
  # get 'pages/edit'
  # get 'pages/delete'
  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
