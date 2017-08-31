Rails.application.routes.draw do
  root 'front_pages#home'
  get 'about', to: 'front_pages#about'
end
