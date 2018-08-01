class MybooksController < ApplicationController
  layout 'mybooks'

  def index
    @page = (params[:page] || 1).to_i
    @offset = number_of_entries_in_page * (@page - 1)
    @mypost = Mypost.all.order('created_at desc').offset(@offset).limit(number_of_entries_in_page)
  end

  def genre
    @page = (params[:page] || 1).to_i
    @offset = number_of_entries_in_page * (@page - 1)
    @mygenre = Mygenre.find params[:id]
    @mypost = @mygenre.posts.order('created_at desc').offset(@offset).limit(number_of_entries_in_page)
  end

  def show
    @mypost = Mypost.find params[:id]
  end

  private

  def number_of_entries_in_page
    5
  end
end
