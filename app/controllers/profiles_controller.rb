class ProfilesController < ApplicationController
 
  def show
    end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end
end
