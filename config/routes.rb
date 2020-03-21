Rails.application.routes.draw do
  
  resources :events do
    member do
      get :delete
    end
  end

  resources :tweeters do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
