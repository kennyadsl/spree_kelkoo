Rails.application.routes.draw do
  resources :products, only: [] do
    collection do
      get :kelkoo
    end
  end

  namespace :admin do
    resource :kelkoo
  end
end
