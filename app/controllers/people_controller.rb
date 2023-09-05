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
  def edit
    @people = Person.find(params[:id])
  end
  def update
    @people=Person.find(params[:id])
    if @people.update(people_params)
      flash[:success] = "Successfully Updated"
      redirect_to '/people/index'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @people = Person.find(params[:id])
    @people.destroy

    redirect_to '/people/index', status: :see_other
  end
  private
    def people_params

      params.require(:person).permit(:name, :age, :gender, :dob)
    end

end
