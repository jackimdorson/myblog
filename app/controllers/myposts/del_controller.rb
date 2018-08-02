class Myposts::DelController < ApplicationController
  def show
    @mypost = Mypost.find params[:id]
  end

  def destroy
    @mypost = Mypost.find(params[:id]).destroy
    goback
  end

  private
  def goback
    redirect_to '/myposts'
  end
end

