class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @musics = []
    current_user.likes.each do |l|
      @musics.push(l.music)
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    # Implement Strong Params
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :image_url)
    end
end




