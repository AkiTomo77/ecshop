Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }
  devise_for :customers, controllers: {
    sessions: 'customer/sessions',
    registrations: 'customer/registrations'
  }

  namespace :admin do
    resources :products, only: %i[index show new create edit update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "shops/akitomo" => "shops#akitomo"
  root  "shops#akitomo"
end
