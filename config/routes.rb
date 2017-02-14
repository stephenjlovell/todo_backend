Rails.application.routes.draw do

  # get '/' => 'todos#index'
  # post '/' => 'todos#create'

  #
  #
  # get '/:id' => 'todos#show', format: :json,
  # put '/:id' => 'todos#update'
  # delete '/:id' => 'todos#destroy'

  resources :todos, path: '/'

  delete '/' => 'todos#destroy_all'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
