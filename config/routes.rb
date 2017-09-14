Rails.application.routes.draw do
  resources :avions
  devise_for :users
  get 'admin/indexadmin'
  get 'home/indexhome'
root :to =>'home#indexhome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
