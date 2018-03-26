Rails.application.routes.draw do




  get '/tasks', to: 'tasks#index', as:'tasks'
  get '/tasks/new', to:'tasks#new', as:'new_task'
  post '/tasks', to:'tasks#create'
  get '/tasks/:id/edit', to:'tasks#edit', as:'edit_task'
  get '/tasks/:id', to:'tasks#show', as:'task'
  delete '/tasks/:id', to:'tasks#destroy', as:'remove_item'
  patch '/tasks/:id', to:'tasks#update'
  patch 'tasks/:id/complete', to:'tasks#complete' , as: 'tasks_completed'
  patch 'tasks/:id/uncomplete', to:'tasks#uncomplete', as: 'tasks_uncompleted'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end