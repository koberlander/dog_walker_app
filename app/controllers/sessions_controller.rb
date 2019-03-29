class SessionsController < ApplicationController

  def new
    if current_owner
      redirect_to home_path
    else
      render :new
    end
  end

  def create
    @owner = Owner.find_by(username: params[:username])
    if @owner && @owner.authenticate(params[:password])
      session[:owner_id] = @owner.id
       redirect_to home_path
     else
       render :new
     end
  end

  def current_owner

  end

  def logged_in?

  end

  def authorized

  end

end
