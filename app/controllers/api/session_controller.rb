class Api::SessionController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def create
    session = Session.authorize_with_credentials params[:email], params[:password]
    render json: session, status: 201
  end

end
