class MypostsController < ApplicationController
  def index
    @mypost = Mypost.all.order('created_at desc')
  end

  def add
    @mygenre = Mygenre.all
    @mypost = Mypost.new 
    if request.post? then
      @mypost = Mypost.new mypost_params
      if @mypost.save then
        goback
      end
    end
  end

  def edit
    @mygenre = Mygenre.all
    @mypost = Mypost.find params[:id]
    if request.patch? then
      @mypost.update mypost_params
      if @mypost.save then
        goback
      end
    end
  end

  def delete
    @mypost = Mypost.find params[:id]
    if request.post? then
      @mypost.destroy
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
