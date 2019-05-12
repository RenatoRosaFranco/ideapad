# frozen_string_literal: true
Rails.application.routes.draw do
  resources :ideas
  devise_for :users
  root to: 'ideas#index'
end
