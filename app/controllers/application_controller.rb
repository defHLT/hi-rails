class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #protect_from_forgery with: :null_session

  def not_found
    raise ActionController::RoutingError.new('Not found')
  end
end
