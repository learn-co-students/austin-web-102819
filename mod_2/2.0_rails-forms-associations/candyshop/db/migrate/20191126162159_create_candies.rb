class CreateCandies < ActiveRecord::Migration[6.0]
  def change
    create_table :candies do |t|
      t.string :name
      t.string :candy_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
