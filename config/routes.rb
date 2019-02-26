Rails.application.routes.draw do
  # Create
  get    'tasks/new',      to: 'tasks#new'
  post   'tasks',          to: 'tasks#create'

  # Read
  get    'tasks',          to: 'tasks#index'
  get    'tasks/:id',      to: 'tasks#show', as: 'task'

  # Update
  get    'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch  'tasks/:id',      to: 'tasks#update'

  # Destroy
  delete 'tasks/:id',      to: 'tasks#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
