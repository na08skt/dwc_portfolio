class Public::UsersController < ApplicationController
  def index
  end

  def show
  end

  def withdrawal
    @user = User.find(params[:id])
    # is_deletedカラムをtrueに変更することにより削除フラグを立てる
    @user.update(user_status: true)
    reset_session
    redirect_to root_path
  end

  def edit
  @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user = User.update(user_params)
    redirect_to public_user_path(current_user)
  end

  private
  def user_params
    params.require(:user).permit(:account_name, :email,
    :introduction, :pare_of_instagram, :pare_of_twitter, :user_state,
    :user_rank)
  end

end
