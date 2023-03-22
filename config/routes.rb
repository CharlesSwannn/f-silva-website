Rails.application.routes.draw do
  devise_for :admin
  root to: "pages#home", as: :home
  resources :films


  # This line overrides the registration controller of Devise (so that it'll be a single user app)
  devise_for :users, controllers: { registrations: "registrations" }

  devise_scope :user do
    get "/entrar", to: "devise/sessions#new"
  end
end
