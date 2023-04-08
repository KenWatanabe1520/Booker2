class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def edit
    @user = current_user
  end

  def create

  end

  def update

    @user = current_user
    if @user.update(user_params)
      #
      redirect_to user_path(current_user)
    else
      render :edit
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
