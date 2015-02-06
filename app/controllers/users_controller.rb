class UsersController < ApplicationController
  def index
    @users = User.all
    @links = Link.all.order("vote desc")
  end

  def show
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new params.require(:link).permit(:url, :user)
    if @link.save
      redirect_to user_path
    else
      render :new
    end
  end

end
