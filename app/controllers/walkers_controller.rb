
class WalkersController < ApplicationController
  before_action :find_walker, only: [:show, :edit, :update, :destroy]

  def index
    @walkers = Walker.all
  end

  def show
  end

  def new
    @walker = Walker.new
  end

  def create
    @walker = Walker.new(walker_params)
      if @walker.valid?
        @walker.save
        # after user creates an acct with password, automatically log them in
        # session[:user_id] = @user.id
        redirect_to @walker
      else
        render :new
      end
  end

  def edit

  end

  def update
    @walker = Walker.new(walker_params)
      if @walker.valid?
        @walker.save
        redirect_to @walker
      else
        render :new
      end
  end

  def destroy
    @walker.delete
    redirect_to walkers_path
  end

  private

  def walker_params
    params.require(:walker).permit(:name, :bio, :years_experience)
    # :walker_id?
  end

  def find_walker
   @walker = Walker.find(params[:id])
  end

end
