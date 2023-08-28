class MainController < ApplicationController
    def index
        if session[:user_id]
            @user=User.find(session_id)
        end
    end
end
