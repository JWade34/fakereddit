class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    @link = Link.new params.require(:link).permit(:url, :user_id, :title)
    if @link.save
      redirect_to root_path
    else
      render :new
    end
  end

  def vote
    @link = Link.find params[:id]
    @link.vote += 1
    @link.save
    redirect_to root_path
  end

end
