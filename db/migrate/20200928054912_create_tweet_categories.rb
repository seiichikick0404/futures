class CreateTweetCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :tweet_categories do |t|
      t.references :tweet, null: false, forign_key: true
      t.references :category, null: false, forign_key: true
      t.timestamps 
    end
  end
end
