Rails.application.routes.draw do
  # resources :todos
  root 'todos#index'

  post '/' => 'todos#create'
  get '/:id' => 'todos#show'
  patch '/:id' => 'todos#update'
  delete '/:id' => 'todos#destroy'

  delete '/' => 'todos#destroy_all'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
