Rails.application.routes.draw do
  root 'mailings#index'

  resources :mailings do
    resources :deliver
    post 'deliver' => 'deliver'
  end
end
