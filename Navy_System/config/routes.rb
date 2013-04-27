NavySystem::Application.routes.draw do


  namespace :mostkhdmeen do
    resources :users
    resources :groups
  end


	get "qowa/tamam/agaza/index"

	get "qowa/tamam/agaza/edit"

	get "qowa/tamam/agaza/delete"

	get "qowa/tamam/agaza/create"


	get "qowa/tamam/create"

	get "qowa/tamam/edit"

	get "qowa/tamam/report"

	# get "user_session/get_users"
	match 'login' => 'user_session#login', :as => :login
  match 'logout' => 'user_session#logout', :as => :logout
  match 'get_users' => 'user_session#get_users', :as => :get_users


  
  

	resources :user_session

	namespace :qowa do
		resources :tamam  do
			resources :agaza
		end

	end


    root :to =>'user_session#login'

    match ':controller(/:action(/:id))(.:format)'

end
