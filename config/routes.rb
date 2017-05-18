Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  resources :portfolio_items, except: [:show, :index]
  get 'portfolio/:id', to: 'portfolio_items#show', as: 'portfolio_item_show'
  get "portfolio", to: 'portfolio_items#index', as: "portfolio"
  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
