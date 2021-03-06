class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
    def index
      @users = User.all
    end

    def show 
      @user = User.find_by id: params[:id]
    end
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.new user_params
      if @user.save
        flash[:success] = "Register success"
        redirect_to login_path
      else
        flash[:success] = "Register failed"
        render :new
      end
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
    end

    def showinfo
      
      @user = User.find(params[:user_id])
    end

    private
    def user_params
      params.require(:user).permit :name, :password, :password_confirmation
    end
   
  
  end