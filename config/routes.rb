Rails.application.routes.draw do
 #get 'welcome/index'
#resources :userscontroller 
devise_for :users, controllers: { sessions: 'users/sessions'}
 get 'user', to: 'welcome#user'
    root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
