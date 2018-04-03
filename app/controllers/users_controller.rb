class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])

  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to edit_user_path(@user)
    else
      render :new
    end
  end

  def update
    user = User.find_by(params[:id])
    prof_id = Profession.find_by(name: params[:profession]).id
    user.update(profession_id: prof_id)
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
