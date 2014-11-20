class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :tweet
      t.float :latitude
      t.float :longitude
      t.string :url
      t.string :address
      t.integer :hashtag_id

      t.timestamps
    end
  end
end
