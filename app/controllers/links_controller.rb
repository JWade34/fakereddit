class LinksController < ApplicationController

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
