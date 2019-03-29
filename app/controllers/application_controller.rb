class ApplicationController < ActionController::Base

  helper_method :current_owner

  def current_owner
    # owner_id = session["owner_id"]
    owner_id = session["owner_id"]
    @current_owner ||= Owner.find_by(id: owner_id)
    return @current_owner
  end

  def home
    render :home
  end

end
