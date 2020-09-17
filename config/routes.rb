Rails.application.routes.draw do
  
  resources :rss_feeds
  get '/login' , to:'user#login'
  get '/signup' , to:'user#new'
  get '/help' , to:'static_pages#help'
  get '/about', to:'static_pages#about'
  get '/contact', to:'static_pages#contact'
  resources :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
