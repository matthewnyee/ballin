class UsersController < ApplicationController
  protect_from_forgery

  def index
    @users = User.all
  end

  def new
    # @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.save
    redirect_to users_url
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user
      if params[:user][:name] #check if i need this double-if checker or not
        #am doing this b/c sometimes will only have :name or :status in params
        @user.name = params[:user][:name]
      end
      if params[:user][:status]
        @user.status = params[:user][:status]
      end
      @user.save
    end
    redirect_to users_url
  end


#Don't need user_params anymore, just use params[:user][:status] or params[:user][:name]
  # private
  #
  #   def user_params
  #     params.require(:user).permit(:name, :status)
  #   end

end
