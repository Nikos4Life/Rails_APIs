Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    resources :users, except: [:new, :edit] do
      resources :tasks, except: [:new, :edit, :destroy]
      post 'tasks/:id/complete', to: 'tasks#complete'
    end
  end
end
end