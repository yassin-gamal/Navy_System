NavySystem::Application.routes.draw do
	get "qowa/tamam/agaza/index"

	get "qowa/tamam/agaza/edit"

	get "qowa/tamam/agaza/delete"

	get "qowa/tamam/agaza/create"


	get "qowa/tamam/create"

	get "qowa/tamam/edit"

	get "qowa/tamam/report"

	# get "user_session/get_users"

	resources :groups

	resources :users

	resources :user_session

	namespace :qowa do
		resources :tamam  do
			resources :agaza
		end

	end


    # match 'login' => 'user_session#login', :as => :login
    match 'login' => 'user_session#login', :as => :login
    match 'logout' => 'user_session#logout', :as => :logout
    match 'get_users' => 'user_session#get_users', :as => :get_users

    root :to =>'user_session#login'

    match ':controller(/:action(/:id))(.:format)'

end
