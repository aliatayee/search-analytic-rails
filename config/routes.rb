# frozen_string_literal: true

Rails.application.routes.draw do
  resources 'articles', only: [:index]
  root 'articles#index'
  get 'articles/search', to: 'articles#search'
  get 'articles/trends', to: 'articles#trends'
end
