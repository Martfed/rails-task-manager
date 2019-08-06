Rails.application.routes.draw do
  # resources :tasks, as: :edit_task, path: 'tasks/:id/edit', as: :task, path: 'tasks/:id'
  # list all tasks
  get 'tasks', to: 'tasks#index'

  # create new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # list one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update', as: :delete_task

  # delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
