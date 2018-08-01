class MygenresController < ApplicationController
  
  def index
    @mygenre = Mygenre.all.order('created_at desc')
  end

  def new
    @mygenre = Mygenre.new
    if request.post?
      @mygenre = Mygenre.new mygenre_params
      if @mygenre.save
        goback
      end
    end
  end

  def create
    @mygenre = Mygenre.new
    if request.post?
      @mygenre = Mygenre.new mygenre_params
      if @mygenre.save
        goback
      end
    end
  end

  def edit
    @mygenre = Mygenre.find params[:id]
    if request.patch?
      @mygenre.update mygenre_params
        if @mygenre.save
           goback
        end
    end
  end

  def destroy
    Mygenre.find(params[:id]).destroy
    goback
  end

  private
  
  def mygenre_params
    params.require(:mygenre).permit(:name, :memo)
  end

  def goback
    redirect_to "/mygenres"
  end
end
