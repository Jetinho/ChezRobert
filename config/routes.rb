Rails.application.routes.draw do
  get 'orders/index'

  get 'orders/show'

  get 'orders/new'

  get 'orders/create'

  get 'orders/edit'

  get 'orders/update'

  get 'productions/index'

  get 'productions/show'

  get 'productions/new'

  get 'productions/create'

  get 'productions/edit'

  get 'productions/update'

  get 'productions/destroy'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
