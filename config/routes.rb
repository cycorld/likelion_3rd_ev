Rails.application.routes.draw do
  devise_for :users
  get ':controller(/:action(/:id))'
  post ':controller(/:action(/:id))'

  root 'home#index'
end
