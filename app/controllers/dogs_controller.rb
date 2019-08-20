class DogsController < ApplicationController
  
  def index
    @dogs = Dog.all.order(:id)
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)

    if @dog.save
      redirect_to people_path 
    else
      render :new
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
  
    if @dog.update(dog_params)
      redirect_to people_path
    else
      render :edit
    end
  end

  def delete
    Dog.find(params[:id]).destroy
    redirect_to people_path
  end

  private

  def dog_params
    params.require(:dog).permit(:animal_name, :breed, :age, :person_id)
  end
end
