class PeopleController < ApplicationController
  def index
    @people=Person.all
  end
  def new
    @people=Person.new

  end
  def show
    @people=Person.find(params[:id])
  end
  private
    def people_params
      params.require(:person).permit(:name, :age)
    end

end
