Rails.application.routes.draw do
	#create
	get '/posts/new' => 'posts#new'
	post '/posts/create' => 'posts#create'

	#Read
	get '/posts/index' => 'posts#index'
	get '/posts/show/:post_id' => 'posts#show'
	root 'posts#index'

	# Update
	get '/posts/edit/:post_id' => 'posts#edit'
	post '/posts/update/:post_id' => 'posts#update'


	#Delete
	post 'posts/destroy/:post_id' => 'posts#destroy'

	# Comment
	## Create
	post '/posts/show/:post_id/comments/create' => 'comments#create'
	## Destroy
	post '/posts/show/:post_id/comments/destory/:comment_id' => 'comments#destroy'
end