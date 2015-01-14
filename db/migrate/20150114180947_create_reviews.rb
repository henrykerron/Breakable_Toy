class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.text :video, null: false

      t.timestamps
    end
  end
end
