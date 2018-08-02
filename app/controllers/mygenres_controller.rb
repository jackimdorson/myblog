class MygenresController < ApplicationController
  
  def index
    @mygenre = Mygenre.all.order('created_at desc')
  end

  def new
    @mygenre = Mygenre.new
  end

  def create
    @mygenres = Mygenre.new(mygenre_params)
      if @mygenres.save
         goback
      end
  end

  def edit
    @mygenre = Mygenre.find params[:id]
  end

  def update
      @mygenre = Mygenre.find params[:id]
      if @mygenre.update(mygenre_params)
         goback
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
