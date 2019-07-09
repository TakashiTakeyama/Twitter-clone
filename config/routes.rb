Rails.application.routes.draw do
  root to: 'tubuyakis#new'
  resources :tubuyakis do
    collection do
      post :confirm
    end
  end
end
