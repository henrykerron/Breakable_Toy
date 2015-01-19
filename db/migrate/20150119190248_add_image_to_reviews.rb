class AddImageToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :image, :string, null: false
  end
end
