class PeopleController < ApplicationController

  def index
    @people = Person.all.order(:id)
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to new_dog_path 
    else
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
  
    if @person.update(person_params)
      redirect_to people_path
    else
      render :edit
    end
  end

  def delete
    Person.find(params[:id]).destroy
    redirect_to people_path
  end

  private
    def person_params
      params.require(:person).permit(:first_name, :last_name, :age, :gender)
    end



end
