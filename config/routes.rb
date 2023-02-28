# frozen_string_literal: true

Rails.application.routes.draw do
  resources :employments
  resources :assignments
  resources :projects
  resources :employees
  resources :positions
  resources :departments

  resource :dashboard, only: %i[show]
  root 'dashboards#show'
end
