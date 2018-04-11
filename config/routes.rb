Rails.application.routes.draw do
  resources :line_items do
    member do
      patch :change_quantity
      post :change_quantity
    end
  end
  resources :carts
  get 'store/index', as: :store_index
  root to: 'store#index'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
