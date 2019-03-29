class WalksController < ApplicationController
  def new
    @walk = Walk.new
  end

  def show
    @walk = Walk.find(params[:id])
  end

  def create
    # params[:walk][:dog_ids].each do |dog_id|
    #   if !dog_id.empty?
    #       Walk.create!(walk_params, dog_id: dog_id.to_i)
    #   end
    # end



    @walk = Walk.new(walk_params)
    if @walk.valid?
      @walk.save
      redirect_to @walk
    else
      render :new
    end
  end

  private
   def walk_params
     params.require(:walk).permit(:walker_id, :dog_id, :walk_length)
   end
end
