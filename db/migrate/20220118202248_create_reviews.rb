class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :content
      t.timestamps
      t.references :restaurant, null: false, foreign_key: true
    end
  end
end
