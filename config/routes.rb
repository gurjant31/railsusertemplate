Rails.application.routes.draw do

	

	# Resource Routes  
	resources :users, only: %i(create update destroy)
  resources :sessions, only: %i(create)

  	#Manuall Routes
  	#Main Routes
  	root 'main#index'

  	#User Routes
  	get '/user/profile' => 'users#profile'
  	get '/login' => 'users#login'
  	get '/signup' => 'users#new'
    post '/user/updatepassword' => 'users#changePassword'

    #Sessions Routes
    get 'session/destroy' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
