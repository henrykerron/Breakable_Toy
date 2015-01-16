class ChangeVideoColumnToText < ActiveRecord::Migration
  def change
    change_column :reviews, :video, :string
  end
end
