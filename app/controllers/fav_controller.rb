class FavController < ApplicationController
  layout false

  def show1
    @array2 = [1, 2, 3, 4, 4]
    render('fav/show1') # this is a default, searches in views/fav/show1 (no need to specify)
  end

  def show2
    @page = params[:page] # make instance variable of query parameter "page"
    # render('show2') # this is a default, searches in synonymous views directory (fav) (no need to specify)
  end

  def show3
    render(:template => 'fav/show3') # this is a default (no need to specify)
  end
end
