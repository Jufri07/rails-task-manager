Rails.application.routes.draw do

  get '/tasks/new', to: 'tasks#new'

  get '/tasks', to: 'tasks#index'

  get '/tasks/:id', to: 'tasks#show', as: :task

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  patch 'tasks/:id', to: 'tasks#update', as: :task_update

  post '/tasks', to: 'tasks#create'

  delete '/tasks/:id', to: 'tasks#destroy'
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
