Rails.application.routes.draw do
  
  devise_for :users
  get 'persons/profile', as: 'user_root'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#welcome'

  get 'categories', to: 'pages#categories'
  get 'contacts', to: 'pages#contacts'
  get 'about_blog', to: 'pages#about_blog'
  get 'blender', to: 'pages#blender'
  get 'linux', to: 'pages#linux'
   
  resources :pages

end
