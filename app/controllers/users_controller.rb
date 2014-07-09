class UsersController < ApplicationController

  skip_before_action :current_user?, only: [:new, :create]
  before_action :check_admin, only: [:index]
	before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
	if @user.save
  	  redirect_to controller: :logins, action: :new
  	else
  	  render action: :new
  	end
  end 

  def edit
  end

  def update
  	if @user.update(user_params)
  	   redirect_to action: :index
  	 else
  	   render action: :edit
  	 end
  end 

  def destroy
  	@user.destroy
  	redirect_to action: :index
  end

  private
  def user_params
    params.require(:user).permit(:name, :tell, :code, :address, :birthday, :password)
  end

  def set_user
  	@user = User.find(params[:id])
  end
end

  def check_admin
    #binding.pry
    unless current_user.admin
      redirect_to({controller: :book_records , action: :index },:flash => {:msg => '管理者でないため表示できません。'})
    end
  end