class BookmarksController < ApplicationController

  before_action :set_list, only: [:create]

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list_id = @list.id
      if @bookmark.save
        redirect_to list_path(@list)
      else
        render :new, status: :unprocessable_entity
      end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list_id)
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
