class Mybooks::GenreController < ApplicationController
  def show
    # page_size = 5
    #     @page_num = 0
    #     if params[:page] != nil then
    #         @page_num = params[:page].to_i
    #     end
        @mygenre = Mygenre.find params[:id]
        @mypost = Mypost.where('genre_id = ?', params[:id]).page(params[:page]).per(5)
        # .order('created_at desc').offset(page_size * @page_num)
        # .limit(page_size)
  end
end
