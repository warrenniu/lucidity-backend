class Api::V1::UsersController < ApplicationController

    def index
		users = User.all.includes(:journals)
		render json: users, except: [:created_at, :updated_at]
    end
    
    def show
		user = User.find(params[:id])
		render json: user
    end
    
    def create
        user = User.create(user_params)
        # render json: user
        if user.valid?
        render json: { user: UserSerializer.new(user) }, status: :created 
        
        else  
          render json: { error: 'failed to create user'}, status: :not_acceptable 
        end
    end

    private
    
    def user_params 
          params.require(:user).permit(:username, :password, :first_name, :last_name, :birthday)
    end
end
