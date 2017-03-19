Rails.application.routes.draw do

  root 'demo#index'

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  resources :sections do
    member do
      get :delete
    end
  end

  get 'demo/escape_output'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
