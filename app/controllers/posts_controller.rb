class PostsController < ApplicationController
	def new

	end

	def create
		@post = Post.new
		@post.title = params[:input_title]
		@post.content = params[:input_content]
		@post.save 

		redirect_to "/posts/show/#{@post.id}"
	end

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:post_id])
	end

	#delete
	def destroy
		@post = Post.find(params[:post_id])
		@post.destroy
		redirect_to '/'
	end
	
end
