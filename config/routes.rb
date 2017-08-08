Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks do
    member do
      patch 'done', to: 'tasks#mark_as_done'
    end
  end
end

  # patch '/task/done/:id', to: 'tasks#mark_as_done'
