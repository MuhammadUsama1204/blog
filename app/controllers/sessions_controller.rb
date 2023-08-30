class SessionsController < ApplicationController
    def create
        user=User.find_by(email:params[:email])
        if user.present? && user.authenication[params[:password]]
           session[:user_id]=user.id
           redirect_to root_path
        else
            flash[:alert]="Invalid email or password"
            render:new
        end

    end

    def destroy
        session[:user_id]=nil
        redirect_to root_path, notice:"logged out"
    end
end
