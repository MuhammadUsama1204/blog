class ApplicationController < ActionController::Base
    #http_basic_authenticate_with name: "usama", password: "123", except: [:index, :show]
    layout 'admin'
    before_action :authenticate_admin_user!
    protected
      def  after_sign_in_path_for(resource)
        people_path
      end

end
