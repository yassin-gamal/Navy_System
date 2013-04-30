NavySystem::Application.routes.draw do

  get "qowa/tamam/create"
  get "qowa/tamam/edit"
  get "qowa/tamam/report"
  
  namespace :qowa do
    resources :vacations
    resources :vacation_types
  end




  resources :user_session

  namespace :mostkhdmeen do
    resources :users
    resources :groups
  end

  # get "user_session/get_users"
  match 'login' => 'user_session#login', :as => :login
  match 'logout' => 'user_session#logout', :as => :logout
  match 'get_users' => 'user_session#get_users', :as => :get_users

  root :to =>'user_session#login'

  match ':controller(/:action(/:id))(.:format)'

end
