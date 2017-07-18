Rails.application.routes.draw do
  root 'jsession#new'
  get    '/login',   to: 'jsession#new'
  post   '/login',   to: 'jsession#create'
  delete '/logout',  to: 'jsession#destroy'

  resources :companies
  resources :job_seekers do
    collection do
      get 'login', action: :login
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
