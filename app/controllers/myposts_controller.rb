class MypostsController < ApplicationController
  
  def index
      @mypost = Mypost.page(params[:page]).per(25)
  end

  def show
    @mypost = Mypost.find params[:id]
  end

  def new
      @mygenre = Mygenre.all
      @mypost = Mypost.new 
  end

  def create
      @mypost = Mypost.new(mypost_params)
        if @mypost.save
          goback
        end
  end

  def edit
      @mygenre = Mygenre.all
      @mypost = Mypost.find params[:id]
  end

  def update
      @mypost = Mypost.find params[:id]
        if @mypost.update mypost_params
          goback
        end
  end

  private
  
  def mypost_params
      params.require(:mypost).permit(:title, :author, :price, :genre_id, :content)
  end

  def goback
      redirect_to '/myposts'
  end

end
