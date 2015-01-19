class RemoveImageFromReviewsTable < ActiveRecord::Migration
  def change
    remove_column :reviews, :image
  end
end
