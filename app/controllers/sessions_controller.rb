class SessionsController < ApplicationController
    def create
     logged_user = User.find_by(username: params[:username])
     session[:user_id] ||= logged_user[:id]
     render json:logged_user
    end

    def destroy
    session.delete :user_id
    head :no_content
    end
    
end
