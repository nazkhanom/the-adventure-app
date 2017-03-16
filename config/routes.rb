# frozen_string_literal: true
Rails.application.routes.draw do
  resources :adventures
  devise_for :users
  root to: 'welcome#show'
end
