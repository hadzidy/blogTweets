class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :tweet
      t.string :latitud
      t.string :longitud
      t.string :url

      t.timestamps
    end
  end
end
