Rails.application.routes.draw do
  root to: 'tubuyakis#new'
  resources :tubuyakis
end
