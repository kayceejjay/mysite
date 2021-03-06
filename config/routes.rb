Rails.application.routes.draw do

# Page Navigation
  
  get 'favicon', to: 'navpages#favicon'
  
  root to: 'navpages#index', as: 'welcome'

  get '/history', to: 'navpages#history', as: 'history'

  get '/contact', to: 'navpages#contact', as: 'contact'

  get '/help', to: 'navpages#help', as: 'help'
  
  get '/news', to: 'navpages#news', as: 'news'
  
  get '/services', to: 'navpages#services', as: 'services'

  get '/services/develop', to: 'navpages#develop', as: 'develop'
  
  get '/services/design', to: 'navpages#design', as: 'design'
  
  get '/services/consult', to: 'navpages#consult', as: 'consult'
  
# Visitors
  get '/reqinfo', to: 'visitors#new'
  
  post '/reqinfo', to: 'visitors#create'
  
  resources :visitors, except: [:show, :edit, :update]
  
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end