Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: :tasks
  get 'tasks/:id', to: 'tasks#show', as: :task

  post 'tasks', to: 'tasks#create'
  get 'new', to: 'tasks#new'

  patch 'tasks/:id', to: 'tasks#update'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  delete 'tasks/:id', to: 'tasks#destroy'
end
