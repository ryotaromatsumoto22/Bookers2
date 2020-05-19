class UserProfilesController < ApplicationController

	def edit
		@user_info = User.find(params[:user_id])
	end

	def update
		@user_info = User.find(params[:user_id])
		@user_info.update
		redirect_to post_book_path
	end
	
end
