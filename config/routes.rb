Rails.application.routes.draw do
  devise_for :users
  resources :books do
    resources :product_reviews
  end
  root 'books#index'

  get '/users/:id/dismiss_alert' => 'users#dismiss_alert'
  #creates a route, use AJAX to make a request to that route  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
