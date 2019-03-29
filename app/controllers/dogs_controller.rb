class DogsController < ApplicationController
  before_action :find_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = current_owner.dogs

  end

  def show

  end

  def new
    @dog = Dog.new
  end

  def create
    # byebug
    @dog = Dog.new(dog_params)
      if @dog.valid?
        @dog.save
        redirect_to @dog
      else
        render :new
      end
  end

  def edit

  end

  def update
    @dog.update(dog_params)

    if @dog.valid?
      @dog.save
      redirect_to @dog

    else
      render :new
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.delete
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :age, :gender, :owner_id)
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end

end
