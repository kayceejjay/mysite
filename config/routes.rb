Rails.application.routes.draw do
  
  root to: 'navpages#index', as: 'welcome'

  get '/about', to: 'navpages#about', as: 'about'

  get '/contact', to: 'navpages#contact', as: 'contact'

  get '/help', to: 'navpages#help', as: 'help'
  
  get '/news', to: 'navpages#news', as: 'news'
  
  get '/services', to: 'navpages#services', as: 'services'

  get '/services/develop', to: 'navpages#develop', as: 'develop'
  
  get '/services/design', to: 'navpages#design', as: 'design'
  
  get '/services/consult', to: 'navpages#consult', as: 'consult'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end