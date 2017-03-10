class PagesController < ApplicationController
  def home
    if current_user
      redirect_to books_path
    end
  end

  def dashboard
    @books = current_user.books
  end
end
