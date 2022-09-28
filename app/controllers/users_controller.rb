class UsersController < ApplicationController
  def index
    render json: UserBlueprint.render(User.all, view: :normal), status: :ok
  end

  def show
    render json: UserBlueprint.render(User.find(params[:id]), view: :show), status: :ok
  end
end
