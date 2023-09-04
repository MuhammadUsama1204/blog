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
  def create 
    @people=Person.new(people_params)
    if @people.save
      flash[:success] = "Successfully Added"
      redirect_to '/people/index'
    else
      render :new, status: :unprocessable_entity
    end
  end
  private
    def people_params
      params.require(:person).permit(:name, :age)
    end

end
