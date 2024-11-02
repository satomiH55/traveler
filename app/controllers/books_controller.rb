class BooksController < ApplicationController
    def show
       @book = Book.find(params[:id])
       unless ReadCount.where(created_at: Time.zone.now.all_day).find_by(user_id: current_user.id, book_id: @book.id)
         current_user.read_counts.create(book_id: @book.id)
       end
    end
   end