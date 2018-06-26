class UsersController < ApplicationController
  before_action :authenticate_user!, :except=>[:show]

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 5)
  end
end
