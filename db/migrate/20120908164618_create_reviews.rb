class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :dish_id
      t.integer :user_id
      t.integer :rating
      t.integer :up_vote_count
      t.integer :down_vote_count
      t.text :review

      t.timestamps
    end
  end
end
