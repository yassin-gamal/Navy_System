NavySystem::Application.routes.draw do
  resources :groups

  resources :users

  resources :user_session


    # match 'login' => 'user_session#login', :as => :login
	# match 'login' => 'user_session#login', :as => :login
  	match 'logout' => 'user_session#logout', :as => :logout
	match 'form' => 'user_session#sample_form', :as => :form
	match 'edit' => 'user_session#sample_edit_form', :as => :edit
	match 'report' => 'user_session#sample_report_form', :as => :report
	match 'agaza' => 'user_session#agaza_types', :as => :agaza


	root :to =>'user_session#login'

	match ':controller(/:action(/:id))(.:format)'

end
