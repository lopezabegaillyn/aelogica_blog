Rails.application.routes.draw do
  get 'users/new'

    get 'welcome/index'
    
    resources :articles do
        resources :comments
    end
    
    root 'welcome#index'
    
   
    post '/signup', to: 'users#create'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
  
    resources :users    
    

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
