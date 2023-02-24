class UsersController < ApplicationController
    before_action :set_user, only: %i[ show edit update destroy ]
    def create
        @user = User.new(user_params)
            if @user.save
                flash[:notice] = "Signed up successfully!"
                redirect_to root_path
            else
                flash[:notice] = "There was a problem creating account."
                render :new
            end
    end
    
    def login
    end

    def new
        @user = User.new
    end

    private
    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
