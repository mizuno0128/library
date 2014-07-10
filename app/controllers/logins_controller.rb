class LoginsController < ApplicationController
	skip_before_action :current_user?

	def new
	end

	def create
	  #binding.pry
	  users = User.where('code = ? AND password = ?',params["code"],params["password"])
	  if users.present?
	  	user = users.first
	  	session[:user_id] = user.id
	  	redirect_to controller: :book_records, action: :index 
	  else
	  	flash[:msg] = 'ログインできませんでした。'
	  	redirect_to action: :new
	  end
	end

	def destroy
		session[:user_id] = nil
		redirect_to action: :new
	end
end
