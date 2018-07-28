class MygenresController < ApplicationController
  
  layout = "mygenres"

  def index
    @mygenre = Mygenre.all.order('created_at desc')
  end

  def add
    @mygenre = Mygenre.new
    if request.post? then
      @mygenre = Mygenre.new mygenre_params
      if @mygenre.save then
        goback
      end
    end
  end

  def edit
    @mygenre = Mygenre.find params[:id]
    if request.patch? then
      @mygenre.update mygenre_params
      if @mygenre.save then
        goback
      end
    end
  end

  def delete
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
