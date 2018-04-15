#---
# Excerpted from "Rails, Angular, Postgres, and Bootstrap",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/dcbang for more book information.
#---
Rails.application.routes.draw do
  devise_for :users
  root 'dashboard#index'
  
  resources :customers, only: [ :index, :show, :update ]
  # -------------------------------------------^^^^^^^

  get "angular_test", to: "angular_test#index"
  get "fake_billing", to: "fake_billing#show"

  get "bootstrap_demo", to: "bootstrap_demo#show"
end
