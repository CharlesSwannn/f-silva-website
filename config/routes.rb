Rails.application.routes.draw do
  get 'films/index'
  root to: "pages#home", as: :home
  resources :films
end
