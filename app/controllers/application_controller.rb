class ApplicationController < ActionController::Base
    http_basic_authenticate_with name: "usama", password: "123", except: [:index, :show]
    layout 'admin'
   
end


