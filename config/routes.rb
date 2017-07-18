Rails.application.routes.draw do
  get 'reg/index'

  get 'csession/new'

  get 'csession/create'

  get 'welcome/index'

  root 'jsession#new'
  get    '/login',   to: 'jsession#new'
  post   '/login',   to: 'jsession#create'
  delete '/logout',  to: 'jsession#destroy'
  get '/welcome', to: 'welcome#index'
  get '/company_login', to: 'csession#new'
  post '/company_login', to: 'csession#create'


  resources :companies
  resources :job_seekers do
    collection do
      get 'login', action: :login
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
