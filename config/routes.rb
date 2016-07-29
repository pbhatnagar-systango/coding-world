Rails.application.routes.draw do
 #get 'welcome/index'
 devise_for :users, controllers: { :sessions => "users/sessions",:registrations => "users/registrations",:omniauth_callbacks => "users/omniauth_callbacks"}
 get 'userprofile/:id', to: 'welcome#userprofile',as: 'userprofile'
 get 'admin', to: 'users#admin'
 get 'user', to: 'users#user'
 get 'challengeanswer/:id', to: 'challenges#challengeanswer', as: 'challengeanswer'
 get 'challengeslist', to: 'challenges#challengeslist'
 get 'userslist', to: 'users#userslist'
 post 'new',to: 'todaychallenge#new'
 get 'show', to: 'users#show'
 get 'destroy/:id', to: 'users#destroy',as: 'destroy'
 root 'welcome#home'
 resources :welcome            
 resources :challenges
 resources :answers            
 resources :devise
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end