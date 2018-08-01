class MypostsController < ApplicationController
  
  def index
    @mypost = Mypost.all.order('created_at desc')
  end

  def new
    @mygenre = Mygenre.all
    @mypost = Mypost.new 
    if request.post? 
      @mypost = Mypost.new mypost_params
      if @mypost.save
        goback
      end
    end
  end

  def edit
    @mygenre = Mygenre.all
    @mypost = Mypost.find params[:id]
    if request.patch? 
      logger.debug "====>jack #{mypost_params[:genre_id]}"
      @mypost.update mypost_params
        if @mypost.save 
          goback
        end
    end
  end

  def destroy
    @mypost = Mypost.find(params[:id])
    if request.post?
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
