Rails.application.routes.draw do
 #get 'welcome/index'
 devise_for :users, controllers: { :sessions => "users/sessions",:registrations => "users/registrations",:omniauth_callbacks => "users/omniauth_callbacks"}
 get 'userprofile/:id', to: 'users#userprofile',as: 'userprofile'
 get 'admin', to: 'users#admin'
 get 'user', to: 'users#user'
 
 get 'challengeanswer/:id', to: 'challenges#challengeanswer', as: 'challengeanswer'
 get 'challengeslist', to: 'challenges#challengeslist'
 get 'c_challenges_list', to: 'challenges#c_challenges_list'
 get 'cplus_challenges_list', to: 'challenges#cplus_challenges_list'
 get 'java_challenges_list', to: 'challenges#java_challenges_list'
 get 'c_challenges_answer/:id', to: 'answers#c_challenges_answer', as: 'c_challenges_answer'
 get 'cplus_challenges_answer/:id', to: 'answers#cplus_challenges_answer', as: 'cplus_challenges_answer'
 get 'java_challenges_answer/:id', to: 'answers#java_challenges_answer', as: 'java_challenges_answer'
 get 'approve_request/:id', to: 'notifications#approve_request', as: 'approve_request'
 get 'userslist', to: 'users#userslist'
 get 'notificationlist', to: 'notifications#notificationlist'
 post 'new',to: 'todaychallenge#new'
 get 'show',to: 'users#show'
 get 'destroy/:id', to: 'users#destroy',as: 'destroy'
 root 'welcome#home'
 resources :welcome            
 resources :challenges
 resources :answers            
 resources :devise
 resources :notifications
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end