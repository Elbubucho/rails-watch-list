class RemovePosterUrlFromLists < ActiveRecord::Migration[7.1]
  def change
    remove_column :lists, :poster_url, :string
  end
end
