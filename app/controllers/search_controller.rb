class SearchController < ApplicationController
	#検索用
  def search
    @search = params[:search]
    @user_or_book = params[:anythingok]
    @how_search = params[:choice]
    if @user_or_book == "1"
       @users = User.search(@search, @user_or_book, @how_search)#Userモデルへ
      else
       @books = Book.search(@search, @user_or_book, @how_search)#Bookモデルへ
    end
  end

end
