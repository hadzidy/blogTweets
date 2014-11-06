class PostsController < ApplicationController
	def index
		@posts = Post.all.paginate(page: params[:page])
	end
	def show
		@post = Post.find(params[:id])
	end
	def edit
		@post = Post.find(params[:id])
	end
	def update
	  @post = Post.find(params[:id])
	  if @post.update_attributes(post_params)
	   redirect_to post_path(@post)
	  else
	   render 'edit'
	  end
	 end
	def new
	  	@post = Post.new
	end
	def create
	  @post = Post.new(post_params)
	  @post.address = request.remote_ip
	  if @post.save
	  	flash[:success] = "Post creado exitosamente"
	   redirect_to posts_path
	  else
	  	flash[:success] = "Post fail"
	   render 'new'
	  end
	 end
	private
	def post_params
		params.require(:post).permit(:tweet,:url)
	end
end
