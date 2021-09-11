class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :text
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
