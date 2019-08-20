Rails.application.routes.draw do
  root 'landers#land'
  get '/about', to: 'landers#about'

  resources :people
  resources :dogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
