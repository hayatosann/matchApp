class UsersController < ApplicationController
  
  def index
    @users = User.where.not(id: current_user.id)
  end
  #  現在ログインしているユーザー以外を取得


  def show
    @user = User.find_by(id: params[:id])
  end

end
