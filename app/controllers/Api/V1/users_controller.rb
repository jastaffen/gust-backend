class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:index, :create]
    before_action :user_object, only: [:show, :update, :delete] 
    def index
        @users = User.all
    end

    def show
        render 'api/v1/users/show'
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render(
                    partial: 'api/v1/users/show',
                    formats: [:json],
                    locale: [:en],
                    handlers: [:jbuilder])
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update
    end

    def destroy
    end
    
    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :city, :country, :state, :phone_number)
    end

    def user_object
        @user = User.find(params[:id])
    end
end
