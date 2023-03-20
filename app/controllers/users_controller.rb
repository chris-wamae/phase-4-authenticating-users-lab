class UsersController < ApplicationController

    def show
    get_user = User.find(session[:user_id])
    render json: get_user
    end
end
