class UserController < ApplicationController
  # The line [protect_from_forgery prepend:true] immediately below was suggested at:
  # https://stackoverflow.com/questions/38331496/rails-5-actioncontrollerinvalidauthenticitytoken-error
  protect_from_forgery prepend:true
  
  def new
    @user = User.new
  end
  
  def login 
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      # Handle a successful save.
      render 'index'
    else
      render 'new'
    end
  end

  def index
    @users = User.all
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
