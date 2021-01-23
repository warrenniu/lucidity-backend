class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]


    def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def index
		  users = User.all.includes(:journals)
		  render json: users, except: [:created_at, :updated_at]
    end
    
    def show
		  user = User.find(params[:id])
		  render json: user
    end
    
    def create
        @user = User.create(user_params)
        # render json: user
        if @user.valid?
          @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created 
        
        else  
          render json: { error: 'failed to create user'}, status: :not_acceptable 
        end
    end

    private
    
    def user_params 
          params.require(:user).permit(:username, :password, :first_name, :last_name, :birthday)
    end
end
