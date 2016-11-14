class Api::BaseController < ::ApplicationController
  before_action :authorize_user

  skip_before_action :verify_authenticity_token

  def authorize_user
    @current_session = authenticate_with_http_token do |token, options|
      Session.authorize_user_with_token token
    end

    raise UnauthorizedError.new unless @current_session
  end

end
