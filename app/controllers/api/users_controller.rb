class Api::UsersController < Api::BaseController

  def create
    user = User.create! user_params
    render json: user, status: 201
  end

  def destroy
    user = @current_session.user
    not_found unless user
    user.destroy

    render json: nil, status: 204
  end

  def index
    render json: User.all, status: 200
  end

  def user_params
    params.permit(:email, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
