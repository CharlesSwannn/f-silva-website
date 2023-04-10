Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'articles/create'
  get 'articles/edit'
  get 'articles/update'
  get 'articles/delete'
  devise_for :admin
  root to: "pages#home", as: :home
  resources :films
  get "docs", to: "films#docs"
  get "narrative", to: "films#narrative", as: :narrative
  get "dubbing", to: "films#dubbing", as: :dubbing
  resources :commercials
  resources :articles
  # This line overrides the registration controller of Devise (so that it'll be a single user app)
  devise_for :users, controllers: { registrations: "registrations" }

  # This line creates a new way of logging in - '/entrar'
  devise_scope :user do
    get "/entrar", to: "devise/sessions#new"
  end
end
