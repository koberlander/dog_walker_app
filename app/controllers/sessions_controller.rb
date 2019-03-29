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
       flash[:notice] = "No username/password found with that combination"
       render :new
     end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end
