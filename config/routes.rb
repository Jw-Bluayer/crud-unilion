Rails.application.routes.draw doex
	#create
	get '/posts/new' => 'posts#new'
	get '/posts/create' => 'posts#create'

	#Read
	get '/posts/index' => 'posts#index'
	get '/posts/show/:post_id' => 'posts#show'
	root 'posts#index'

	#Delete
	get 'posts/destroy/:post_id' => 'posts#destroy'
end
