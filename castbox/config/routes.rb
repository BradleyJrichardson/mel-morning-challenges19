# frozen_string_literal: true

Rails.application.routes.draw do
  get '/podcasts', to: 'podcasts#index', as: 'podcasts'
  post '/podcasts', to: 'podcasts#create'
  get '/podcasts/new', to: 'podcasts#new', as: 'new_podcast'
  get '/podcasts/:id', to: 'podcasts#show', as: 'podcast'
  put '/podcasts/:id', to: 'podcasts#update'
  patch '/podcasts/:id', to: 'podcasts#update'
  get '/podcasts/:id/edit', to: 'podcasts#edit', as: 'edit_podcast'

  # episodes controllers routes
  post '/episodes', to: 'episodes#create', as: 'episode'

  root 'podcasts#index'
end
