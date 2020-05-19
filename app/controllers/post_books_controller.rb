class PostBooksController < ApplicationController

	def new
		@post_book = PostBook.new
		@user_info = User.find(params[:user_id])
		@post_books = Post.find(params[:user_id])
	end

	def create
		@post_book = PostBook.new(post_book_params)
		@post_book.save
		redirect_to post_books_path
	end

	def index
		@post_book = PostBook.new
		@user_info = User.find(params[:user_id])
		@post_books = Post.all
	end

	def show
		@post_book = PostBook.new
		@user_info = User.find(params[:user_id])
		@post_books = Post.find(params[:post_book_id])
	end

	def edit
		@post_book = PostBook.find(params[:post_book_id])
	end

	def update
		@post_book = PostBook.find(params[:post_book_id])
		@post_book.update
		redirect_to post_book_path
	end

	def destory
	end

end
