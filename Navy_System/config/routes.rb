NavySystem::Application.routes.draw do
  resources :groups

  resources :users

  resources :user_session


    # match 'login' => 'user_session#login', :as => :login
	match 'login' => 'user_session#new', :as => :login
  	match 'logout' => 'user_session#destroy', :as => :logout
	match 'apps' => 'user_session#apps', :as => :apps 
	match 'form' => 'user_session#sample_form', :as => :form
	match 'edit' => 'user_session#sample_edit_form', :as => :edit
	match 'report' => 'user_session#sample_report_form', :as => :report

end
