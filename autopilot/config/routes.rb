Rails.application.routes.draw do

#user log in and authentication
	get "log_out" => "sessions#destroy", :as => "log_out"
	get "log_in" => "sessions#new", :as => "log_in"
	get "sign_up" => "users#new", :as => "sign_up"
	root :to => "users#new"
	resources :users
	resources :sessions

# create routes
	post "/users/:user_id/entries" => "entries#create"
	post "/users/:user_id/projects" => "projects#create"
	post "/users/:user_id/projects/:project_id/entries" => "joiners#create"

# show routes
	get "/users/:user_id/entries/:id" => "entries#show"
	get "/users/:user_id/projects/:id" => "projects#show"

#create an entry from within a project
	post "/users/:user_id/projects/:project_id/entries" => "entries#create"

#edit routes
get "/users/:user_id/entries/:id/edit" => "entries#edit"
patch "/users/:user_id/entries/:id" => "entries#update"

get "/users/:user_id/projects/:id/edit" => "projects#edit"
patch "/users/:user_id/projects/:id" => "projects#update"

get "/users/:user_id/projects/:project_id/entries/:id" => "entries#edit"
patch "/users/:user_id/projects/:project_id/entries/:id" => "entries#update"

#delete routes
delete "/users/:user_id/entries/:id" => "entries#destroy"

delete "/users/:user_id/projects/:id" => "projects#destroy"

delete "/users/:user_id/projects/:project_id/entries/:id" => "entries#destroy"








# 	# show individual project


# 	# create project entry




# #user homepage
# # get "/users/:id" => "users#show"






# get "/users/:user_id/projects/:id" => "projects#show"

# get "/users/:user_id/projects/:id/edit" => "projects#edit"

# patch "/users/:user_id/projects/:id" => "projects#update"

# delete "/users/:user_id/projects/:id" => "projects#destroy"




# #user project page




# get "/users/:user_id/projects/:project_id/entries/:id" => "entries#edit"

# patch "/users/:user_id/projects/:project_id/entries/:id" => "entries#update"

# delete "/users/:user_id/projects/:project_id/entries/:id" => "entries#destroy"



# #user entry page



# get "/users/:user_id/entries/:id/edit" => "entries#edit"

# patch "/users/:user_id/entries/:id/edit" => "entries#update"

# delete "/users/:user_id/entries/:id/edit" => "entries#destroy"

end

	# # get ALL users - edited to show all projects
	# get "/users" => "users#index"

	# # get ONE user
	# get "/users/:id" => "users#show"

	# # show NEW user form
	# get "/user/new" => "users#new"

	# # process chef CREATE action from form
	# post "/users" => "users#create"

	# # show LOGIN form
	# get "/user/login" => "users#login"

	# # process login form
	# post "/user/login" => "users#process_login"


