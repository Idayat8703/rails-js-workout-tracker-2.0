Rails.application.routes.draw do


  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # homepage
  root 'static#home'
  match 'meals/:id', to: 'meals#show', via: :all


  # workouts
  resources :workouts

  resources :users do
    resources :meals do
      resources :comments
    end
  end

end
