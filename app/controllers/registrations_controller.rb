class RegistrationsController < ApplicationController
    def def new
        @user = User.new
    end
    def def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id]=@user.id
            flash[:success] = " successfully created"
            redirect_to 'articles'
        else
            flash[:error] = "Something went wrong"
            render 'new'
        end
        private
        def user_params
            params.requiure(:user).permit(:email,:password)
        end
    end
    
end
