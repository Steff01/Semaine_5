Rails.application.routes.draw do

  root to: 'pages#index'

  get '/team', to: 'pages#team'

  get '/contact', to: 'pages#contact'

  get '/:name', to: 'pages#welcome', as: 'bienvenue'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
