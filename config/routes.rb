Rails.application.routes.draw do
  resources :products do 
    collection do 
      get :kelkoo
    end
  end
  
  namespace :admin do
    resource :kelkoo
  end
end
