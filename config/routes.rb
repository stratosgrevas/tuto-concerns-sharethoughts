Rails.application.routes.draw do
  resources :thoughts
  devise_for :users
  root to: 'thoughts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/thought/:thougth_id/observation/', to: 'observations#create', as: 'create_observation'

  get 'react/:reactable_type/:reactable_id/:reaction', to: 'reacts#react'
  get 'react-delete/:reactable_type/:reactable_id', to: 'reacts#remove_reaction'
end
