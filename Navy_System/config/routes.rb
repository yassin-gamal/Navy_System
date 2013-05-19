NavySystem::Application.routes.draw do
# get "user_session/get_users"
  match 'login' => 'user_session#login', :as => :login
  match 'logout' => 'user_session#logout', :as => :logout
  match 'get_users' => 'user_session#get_users', :as => :get_users


  

  
  
  match 'qowa/vacations/getUserVacations' => 'qowa/vacations#getUserVacations', :as => :getUserVacations
  match 'qowa/vacations/user_vacations' => 'qowa/vacations#user_vacations', :as => :user_vacations  
  match 'qowa/vacations/user_vacations_brief' => 'qowa/vacations#user_vacations_brief', :as => :user_vacations_brief
  match 'qowa/users' => 'qowa/vacations#users', :as => :users

  namespace :qowa do
    resources :vacations
    resources :vacation_types
  end
  



  resources :user_session

  namespace :mostkhdmeen do
    resources :users
    resources :groups
  end

  

  root :to =>'user_session#login'

  match ':controller(/:action(/:id))(.:format)'

end
